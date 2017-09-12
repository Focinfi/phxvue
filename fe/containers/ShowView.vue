<template>
  <div class="show-view">
    <div class="tool-bar">
    </div>
    <el-table
      border
      class="show-table"
      :data="tableData5">
      <el-table-column type="expand">
        <template scope="props">
          <el-form label-position="left" inline class="table-expand">
            <el-form-item label="商品名称">
              <span>{{ props.row.name }}</span>
            </el-form-item>
            <el-form-item label="所属店铺">
              <span>{{ props.row.shop }}</span>
            </el-form-item>
            <el-form-item label="商品 ID">
              <span>{{ props.row.id }}</span>
            </el-form-item>
            <el-form-item label="店铺 ID">
              <span>{{ props.row.shopId }}</span>
            </el-form-item>
            <el-form-item label="商品分类">
              <span>{{ props.row.category }}</span>
            </el-form-item>
            <el-form-item label="店铺地址">
              <span>{{ props.row.address }}</span>
            </el-form-item>
            <el-form-item label="商品描述">
              <span>{{ props.row.desc }}</span>
            </el-form-item>
          </el-form>
        </template>
      </el-table-column>
      <el-table-column type="selection"></el-table-column>
      <el-table-column
        label="商品 ID"
        sortable
        prop="id">
      </el-table-column>
      <el-table-column
        label="商品名称"
        prop="name">
      </el-table-column>
      <el-table-column
        label="描述"
        prop="desc">
      </el-table-column>
      <el-table-column
        label="操作">
        <template scope="scope">
          <el-button
            size="small">编辑</el-button>
          <el-button
            size="small"
            type="danger">删除</el-button>
        </template>
    </el-table-column>
      </el-table-column>
    </el-table>
  </div>  
</template>

<script>
export default {
  name: "showView",
  data() {
    return {
      tableData5: [{
        id: '12987122',
        name: '好滋好味鸡蛋仔',
        category: '江浙小吃、小吃零食',
        desc: '荷兰优质淡奶，奶香浓而不腻',
        address: '上海市普陀区真北路',
        shop: '王小虎夫妻店',
        shopId: '10333',
        actions: ["编辑", "删除"]
      }, {
        id: '12987126',
        name: '好滋好味鸡蛋仔',
        category: '江浙小吃、小吃零食',
        desc: '荷兰优质淡奶，奶香浓而不腻',
        address: '上海市普陀区真北路',
        shop: '王小虎夫妻店',
        shopId: '10333',
        actions: ["编辑", "删除"]
      }]
    }
  }
}  
</script>

<style>
.show-view {
  width: 100%;
  height: calc(100%-60px);
}
.tool-bar {
  width: 100%;
  height: 50px;
  background-color: white;
  line-height: 50px;
  box-shadow: 0px 2px 3px #999999;
}
.show-table {
  width: 95%;
  margin: 20px auto;
  padding: 0;
}
.table-expand .el-form-item{
  margin-right: 0;
  margin-bottom: 0;
  width: 49%
}
.table-expand label {
  width: 80px;
  color: #99a9bf;
}
</style>

