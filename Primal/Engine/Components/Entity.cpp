#include "Components/Entity.h"
#include "Transform.h"

namespace primal::game_entity
{
	namespace
	{
		utl::vector<transform::component>	transforms;
		
		utl::vector<id::generation_type>	generations;
		utl::deque<entity_id>				free_ids;
	}

	entity
	create_game_entity(const entity_info& info)
	{
		assert(info.transform);
		if (!info.transform) return entity{};
		entity_id id;
		if (free_ids.size() > id::min_deleted_elements)
		{
			id = free_ids.front();
			assert(!is_alive(id));
			free_ids.pop_front();
			id = entity_id{ id::new_generation(id) };
			++generations[id::index(id)];
		}
		else
		{
			id = entity_id{ (id::id_type)generations.size() };
			generations.push_back(0);

			transforms.emplace_back();
		}
		const entity new_entity{ id };
		const id::id_type index{ id::index(id) };

		assert(!transforms[index].is_valid());
		transforms[index] = transform::create_transform(*info.transform, new_entity);

		if (!transforms[index].is_valid()) return {};

		return new_entity;
	}
	void
		remove_game_entity(entity_id id)
	{		
		const id::id_type index{ id::index(id) };
		assert(is_alive(id));
		if (is_alive(id))
		{
			transform::remove_transform(transforms[index]);
			transforms[index] = {};
			free_ids.push_back(id);
		}
	}
	bool
		is_alive(entity_id id)
	{
		assert(id::is_valid(id));		
		const id::id_type index{ id::index(id) };
		assert(index < generations.size());		
		return (generations[index] == id::generation(id) && transforms[index].is_valid());
	}

	transform::component
	entity::transform() const
	{
		assert(is_alive(_id));		
		const id::id_type index{ id::index(_id) };
		return transforms[index];
	}
}

