<script lang="ts">
  import Form from "./Form.svelte";
  import { router } from "@inertiajs/svelte";
  import { inertia } from "@inertiajs/svelte";

  export let category = {};
  export let errors = {};

  const create = () => {
    router.post("/categories/new", category, {
      only: ["errors"],
      onError: (errors) => {
        console.log(errors);
      },
    });
  };
</script>

<h1>New Category</h1>
<controls>
  <button on:click={create}>Create</button>
  <a role="button" href={`/categories`} use:inertia>Back</a>
</controls>
<spacer data-xs />
<Form {category} {errors} />
