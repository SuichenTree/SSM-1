package com.entity;

public class permission {
		private String guid;
		private String classStyle;
		private String id;
		private Integer level;
		private String name;
		private String onclick;
		private String parentGuid;
		private String rel;
	    private Integer tabindex;
	    private String target;
	    private String title;
	    private Integer type;
	    private String url;
	    private String icon;
	    
	    
	    public permission(){}


		public permission(String guid, String classStyle, String id,
				Integer level, String name, String onclick, String parentGuid,
				String rel, Integer tabindex, String target, String title,
				Integer type, String url, String icon) {
			super();
			this.guid = guid;
			this.classStyle = classStyle;
			this.id = id;
			this.level = level;
			this.name = name;
			this.onclick = onclick;
			this.parentGuid = parentGuid;
			this.rel = rel;
			this.tabindex = tabindex;
			this.target = target;
			this.title = title;
			this.type = type;
			this.url = url;
			this.icon = icon;
		}


		public String getGuid() {
			return guid;
		}


		public void setGuid(String guid) {
			this.guid = guid;
		}


		public String getClassStyle() {
			return classStyle;
		}


		public void setClassStyle(String classStyle) {
			this.classStyle = classStyle;
		}


		public String getId() {
			return id;
		}


		public void setId(String id) {
			this.id = id;
		}


		public Integer getLevel() {
			return level;
		}


		public void setLevel(Integer level) {
			this.level = level;
		}


		public String getName() {
			return name;
		}


		public void setName(String name) {
			this.name = name;
		}


		public String getOnclick() {
			return onclick;
		}


		public void setOnclick(String onclick) {
			this.onclick = onclick;
		}


		public String getParentGuid() {
			return parentGuid;
		}


		public void setParentGuid(String parentGuid) {
			this.parentGuid = parentGuid;
		}


		public String getRel() {
			return rel;
		}


		public void setRel(String rel) {
			this.rel = rel;
		}


		public Integer getTabindex() {
			return tabindex;
		}


		public void setTabindex(Integer tabindex) {
			this.tabindex = tabindex;
		}


		public String getTarget() {
			return target;
		}


		public void setTarget(String target) {
			this.target = target;
		}


		public String getTitle() {
			return title;
		}


		public void setTitle(String title) {
			this.title = title;
		}


		public Integer getType() {
			return type;
		}


		public void setType(Integer type) {
			this.type = type;
		}


		public String getUrl() {
			return url;
		}


		public void setUrl(String url) {
			this.url = url;
		}


		public String getIcon() {
			return icon;
		}


		public void setIcon(String icon) {
			this.icon = icon;
		}


		@Override
		public String toString() {
			return "permission [guid=" + guid + ", classStyle=" + classStyle
					+ ", id=" + id + ", level=" + level + ", name=" + name
					+ ", onclick=" + onclick + ", parentGuid=" + parentGuid
					+ ", rel=" + rel + ", tabindex=" + tabindex + ", target="
					+ target + ", title=" + title + ", type=" + type + ", url="
					+ url + ", icon=" + icon + "]";
		}
	    
	    
	    
}
