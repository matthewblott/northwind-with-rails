<script lang="ts">
  import Form from "./Form.svelte";
  import { router } from "@inertiajs/svelte";
  import { inertia } from "@inertiajs/svelte";

  export let category = {};
  export let errors = {};

  const update = () => {
    router.put(`/categories/${category.id}/edit`, category, {
      only: ["errors"],
      onError: (errors) => {
        console.log(errors);
      },
    });
  };

  const remove = () => {
    alert("Not implemented currently");
  };
</script>

<h1>Edit Category</h1>
<controls>
  <button on:click={update}>Update</button>
  <button on:click={remove}>Delete</button>
  <a role="button" href={`/categories/${category.id}`} use:inertia>Back</a>
</controls>
<spacer data-xs />
<Form {category} {errors} />
