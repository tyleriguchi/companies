<template>
  <div>
    <h3>Select an employee to view their tasks!</h3>
    <div v-for="employee in employees" :key="`${employee.id}-employees`">
      <span class="capitalize">{{ employee.name }}</span>
      <button
        v-if="selectedEmployee && selectedEmployee.id != employee.id"
        class="select-employee-button"
        @click="selectEmployee(employee)"
      >
        →
      </button>
    </div>

    <div v-if="selectedEmployee" style="margin-top: 40px;">
      <h3 class="capitalize">Viewing Tasks for: {{ selectedEmployee.name }}</h3>
      <div v-for="task in sortedEmployeeTasks" :key="`task-${task.id}`">
        <task-details :task="task" />
      </div>
    </div>
  </div>
</template>

<script>
import TaskDetails from "@/modules/overview/task-details";

import TaskSorting from "@/domain/task/sorting";

import OverviewApi from "@/shared/api/overview-api";

export default {
  name: "overview-page",
  components: {
    TaskDetails
  },

  props: {},

  data() {
    return {
      selectedEmployee: null,
      employees: []
    };
  },

  computed: {
    sortedEmployeeTasks() {
      if (!this.selectedEmployee) {
        return [];
      }

      return TaskSorting.sortByPriority(this.selectedEmployee.tasks);
    }
  },

  created() {
    OverviewApi.index().then(res => {
      this.employees = res.data;
      this.selectedEmployee = this.employees[0];
    });
  },

  methods: {
    selectEmployee(employee) {
      this.selectedEmployee = employee;
    }
  }
};
</script>

<style scoped>
.capitalize {
  text-transform: capitalize;
}

.select-employee-button {
  background-color: unset;
  border: none;
  font-size: 1rem;
}
</style>
