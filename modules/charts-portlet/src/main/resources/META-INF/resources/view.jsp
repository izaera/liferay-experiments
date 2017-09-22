<%--
/**
 * Copyright (c) 2000-present Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */
--%>

<%@ include file="/init.jsp" %>

<%
// Combination Data
Map<String, Object> combinationDataCol1 = new HashMap<>();
int[] combinationDataCol1Data = {30, 20, 50, 40, 60, 50};

combinationDataCol1.put("id", "data1");
combinationDataCol1.put("data", combinationDataCol1Data);
combinationDataCol1.put("type", "bar");

Map<String, Object> combinationDataCol2 = new HashMap<>();
int[] combinationDataCol2Data = {200, 130, 90, 240, 130, 220};

combinationDataCol2.put("id", "data2");
combinationDataCol2.put("data", combinationDataCol2Data);
combinationDataCol2.put("type", "bar");

Map<String, Object> combinationDataCol3 = new HashMap<>();
int[] combinationDataCol3Data = {300, 200, 160, 400, 250, 250};

combinationDataCol3.put("id", "data3");
combinationDataCol3.put("data", combinationDataCol3Data);
combinationDataCol3.put("type", "spline");

Map<String, Object> combinationDataCol4 = new HashMap<>();
int[] combinationDataCol4Data = {200, 130, 90, 240, 130, 220};

combinationDataCol4.put("id", "data4");
combinationDataCol4.put("data", combinationDataCol4Data);
combinationDataCol4.put("type", "line");

Map<String, Object> combinationDataCol5 = new HashMap<>();
int[] combinationDataCol5Data = {130, 120, 150, 140, 160, 150};

combinationDataCol5.put("id", "data5");
combinationDataCol5.put("data", combinationDataCol5Data);
combinationDataCol5.put("type", "bar");

Map<String, Object> combinationDataCol6 = new HashMap<>();
int[] combinationDataCol6Data = {90, 70, 20, 50, 60, 120};

combinationDataCol6.put("id", "data6");
combinationDataCol6.put("data", combinationDataCol6Data);
combinationDataCol6.put("type", "area");

List<Map<String, Object>> combinationData = new ArrayList<>();
combinationData.add(combinationDataCol1);
combinationData.add(combinationDataCol2);
combinationData.add(combinationDataCol3);
combinationData.add(combinationDataCol4);
combinationData.add(combinationDataCol5);
combinationData.add(combinationDataCol6);

String[] combinationGroup = {"data1", "data2"};

List<String[]> combinationGroups = new ArrayList<>();
combinationGroups.add(combinationGroup);

// Gauge Data 
Map<String, Object> gaugeDataCol1 = new HashMap<>();
double[] gaugeDataCol1Data = {85.4};

gaugeDataCol1.put("id", "data1");
gaugeDataCol1.put("data", gaugeDataCol1Data);

List<Map<String, Object>> gaugeData = new ArrayList<>();
gaugeData.add(gaugeDataCol1);

// Linear Data

Map<String, Object> linearDataCol1 = new HashMap<>();
int[] linearDataCol1Data = {100, 20, 30};

linearDataCol1.put("id", "data1");
linearDataCol1.put("data", linearDataCol1Data);

Map<String, Object> linearDataCol2 = new HashMap<>();
int[] linearDataCol2Data = {20, 70, 100};

linearDataCol2.put("id", "data2");
linearDataCol2.put("data", linearDataCol2Data);

List<Map<String, Object>> linearData = new ArrayList<>();
linearData.add(linearDataCol1);
linearData.add(linearDataCol2);

// Percentage Data

Map<String, Object> percentageDataCol1 = new HashMap<>();
int[] percentageDataCol1Data = {30};

percentageDataCol1.put("id", "data1");
percentageDataCol1.put("data", percentageDataCol1Data);

Map<String, Object> percentageDataCol2 = new HashMap<>();
int[] percentageDataCol2Data = {70};

percentageDataCol2.put("id", "data2");
percentageDataCol2.put("data", percentageDataCol2Data);

List<Map<String, Object>> percentageData = new ArrayList<>();
percentageData.add(percentageDataCol1);
percentageData.add(percentageDataCol2);
%>

<div class="container-fluid">
    <div class="row">
        <div class="col">
            <chart:donut columns="<%= percentageData %>" id="donut" />
        </div>

        <div class="col">
            <chart:gauge columns="<%= gaugeData %>" id="gauge" />
        </div>

        <div class="col">
            <chart:pie columns="<%= percentageData %>" id="pie" />
        </div>
    </div>
</div>

<div class="container-fluid">
    <div class="row">
        <div class="col">
            <chart:line columns="<%= linearData %>" id="line" />
        </div>

        <div class="col">
            <chart:scatter columns="<%= linearData %>" id="scatter" />
        </div>

        <div class="col">
            <chart:spline columns="<%= linearData %>" id="spline" />
        </div>

        <div class="col">
            <chart:step columns="<%= linearData %>" id="step" />
        </div>
    </div>
</div>

<div class="container-fluid">
    <div class="row">
        <div class="col">
            <chart:bar columns="<%= linearData %>" id="bar" />
        </div>

        <div class="col">
            <chart:combination columns="<%= combinationData %>" groups="<%= combinationGroups %>" id="bar" />   
        </div>
    </div>
</div>
