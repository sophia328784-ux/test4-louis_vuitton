package com.dynatrace.agent.view;

import com.dynatrace.android.agent.util.Utility;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B9\b\u0000\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/dynatrace/agent/view/NavigationEvent;", "", "", "sourceName", "detectedSourceName", "sourceInstanceId", "", "startTime", "", "isAutoSendable", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class NavigationEvent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f27210a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f27211b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f27212c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f27213e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile ViewContext f27214f;
    public volatile boolean g;

    public /* synthetic */ NavigationEvent(String str, String str2, String str3, long j2, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i2 & 4) != 0 ? null : str3, j2, z);
    }

    public final JSONObject a() throws JSONException {
        String str;
        String str2;
        ViewContext viewContext = this.f27214f;
        if (!this.g) {
            Utility.b("Cannot convert incomplete NavigationEvent to JSON");
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("start_time", this.d);
        jSONObject.put("duration", 0);
        jSONObject.put("characteristics.has_navigation", true);
        String str3 = this.f27212c;
        if (str3 != null) {
            jSONObject.put("view.source.instance_id", str3);
        }
        String str4 = this.f27210a;
        if (str4 != null) {
            jSONObject.put("view.source.name", str4);
        }
        String str5 = this.f27211b;
        if (str5 != null) {
            jSONObject.put("view.source.detected_name", str5);
        }
        if (viewContext != null) {
            jSONObject.put("view.instance_id", viewContext.f27217a);
            jSONObject.put("view.sequence_number", viewContext.d);
        }
        if (viewContext != null && (str2 = viewContext.f27219c) != null) {
            jSONObject.put("view.detected_name", str2);
        }
        if (viewContext != null && (str = viewContext.f27218b) != null) {
            jSONObject.put("view.name", str);
        }
        return jSONObject;
    }

    public NavigationEvent(String str, String str2, String str3, long j2, boolean z) {
        this.f27210a = str;
        this.f27211b = str2;
        this.f27212c = str3;
        this.d = j2;
        this.f27213e = z;
    }
}
