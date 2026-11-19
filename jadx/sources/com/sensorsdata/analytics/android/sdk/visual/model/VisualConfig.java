package com.sensorsdata.analytics.android.sdk.visual.model;

import defpackage.d21;
import defpackage.n00;
import defpackage.tr;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class VisualConfig {
    public String appId;
    public List<VisualPropertiesConfig> events;
    public String os;
    public String project;
    public String version;

    public static class VisualEvent {
        public String elementContent;
        public String elementPath;
        public String elementPosition;
        public boolean isH5;
        public boolean limitElementContent;
        public boolean limitElementPosition;
        public String screenName;

        public String toString() {
            StringBuilder sb = new StringBuilder("VisualEvent{elementPath='");
            sb.append(this.elementPath);
            sb.append("', elementPosition='");
            sb.append(this.elementPosition);
            sb.append("', elementContent='");
            sb.append(this.elementContent);
            sb.append("', screenName='");
            sb.append(this.screenName);
            sb.append("', limitElementPosition=");
            sb.append(this.limitElementPosition);
            sb.append(", limitElementContent=");
            sb.append(this.limitElementContent);
            sb.append(", isH5=");
            return d21.q(sb, this.isH5, '}');
        }
    }

    public static class VisualPropertiesConfig {
        public VisualEvent event;
        public String eventName;
        public String eventType;
        public List<VisualProperty> properties;

        public String toString() {
            StringBuilder sb = new StringBuilder("VisualPropertiesConfig{eventName='");
            sb.append(this.eventName);
            sb.append("', eventType='");
            sb.append(this.eventType);
            sb.append("', event=");
            sb.append(this.event);
            sb.append(", properties=");
            return tr.m(sb, this.properties, '}');
        }
    }

    public static class VisualProperty {
        public String elementPath;
        public String elementPosition;
        public boolean isH5;
        public String name;
        public String regular;
        public String screenName;
        public String type;
        public String webViewElementPath;

        public String toString() {
            StringBuilder sb = new StringBuilder("VisualProperty{elementPath='");
            sb.append(this.elementPath);
            sb.append("', elementPosition='");
            sb.append(this.elementPosition);
            sb.append("', screenName='");
            sb.append(this.screenName);
            sb.append("', name='");
            sb.append(this.name);
            sb.append("', regular='");
            sb.append(this.regular);
            sb.append("', type='");
            sb.append(this.type);
            sb.append("', isH5=");
            sb.append(this.isH5);
            sb.append(", webViewElementPath='");
            return n00.r(this.webViewElementPath, "'}", sb);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("VisualConfig{appId='");
        sb.append(this.appId);
        sb.append("', os='");
        sb.append(this.os);
        sb.append("', project='");
        sb.append(this.project);
        sb.append("', version='");
        sb.append(this.version);
        sb.append("', events=");
        return tr.m(sb, this.events, '}');
    }
}
