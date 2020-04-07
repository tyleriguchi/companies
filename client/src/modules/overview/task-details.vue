<template>
  <div>
    <h2 class="title">
      {{ task.title }}
      <button class="toggle-icon" v-if="showDetails" @click="toggleDetails">
        &#8963;
      </button>

      <button class="toggle-icon" v-if="!showDetails" @click="toggleDetails">
        ⌄
      </button>
    </h2>
    <div v-if="showDetails">
      <div>
        <h3>Description</h3>
        {{ task.description }}
      </div>
      <div>
        <h3>Priority</h3>
        {{ task.priority }}
      </div>
      <div>
        <h3>State</h3>
        {{ task.state }}
      </div>
      <div>
        <h3>Estimate</h3>
        {{ task.estimate }}
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "task-details",
  props: {
    task: {
      required: true,
      type: Object
    }
  },

  data() {
    return {
      showDetails: false
    };
  },

  computed: {
    displayToggleIcon() {
      if (this.showDetails) {
        return "&#8964;";
      } else {
        return "&#8963;";
      }
    }
  },

  methods: {
    toggleDetails() {
      this.showDetails = !this.showDetails;
    }
  }
};
</script>

<style scoped>
.title {
  text-transform: capitalize;
}

.toggle-icon {
  background-color: unset;
  border: none;
  font-size: 2rem;
}
</style>
