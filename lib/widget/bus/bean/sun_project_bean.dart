// import 'package:beike_flutter_sdk/src/utils/json2bean_util.dart';
//
// class SunProjectBean {
// 	String titleDesc;
// 	String sunUrl;
// 	String title;
// 	String sunDesc;
// 	List<SunlistBean> sunList;
//
// 	SunProjectBean({this.titleDesc, this.sunUrl, this.title, this.sunDesc, this.sunList});
//
// 	SunProjectBean.fromJson(Map<String, dynamic> json) {
// 		titleDesc = safeParse(json, 'titleDesc', 'String');
// 		sunUrl = safeParse(json, 'sunUrl', 'String');
// 		title = safeParse(json, 'title', 'String');
// 		sunDesc = safeParse(json, 'sunDesc', 'String');
// 		if (safeParse(json, 'sunList', 'List<dynamic>') != null) {
// 			sunList = List<SunlistBean>(); (safeParse(json, 'sunList') as List).forEach((v) { sunList.add(SunlistBean.fromJson(v)); });
// 		}
// 	}
//
// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = Map<String, dynamic>();
// 		data['titleDesc'] = this.titleDesc;
// 		data['sunUrl'] = this.sunUrl;
// 		data['title'] = this.title;
// 		data['sunDesc'] = this.sunDesc;
// 		if (this.sunList != null) data['sunList'] = this.sunList.map((v) => v.toJson()).toList();
// 		return data;
// 	}
// }
//
// class SunlistBean {
// 	String name;
// 	String icon;
// 	String url;
// 	String desc;
//
// 	SunlistBean({this.name, this.icon, this.url, this.desc});
//
// 	SunlistBean.fromJson(Map<String, dynamic> json) {
// 		name = safeParse(json, 'name', 'String');
// 		icon = safeParse(json, 'icon', 'String');
// 		url = safeParse(json, 'url', 'String');
// 		desc = safeParse(json, 'desc', 'String');
// 	}
//
// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = Map<String, dynamic>();
// 		data['name'] = this.name;
// 		data['icon'] = this.icon;
// 		data['url'] = this.url;
// 		data['desc'] = this.desc;
// 		return data;
// 	}
// }
