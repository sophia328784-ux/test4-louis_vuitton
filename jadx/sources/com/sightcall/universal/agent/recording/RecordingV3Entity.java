package com.sightcall.universal.agent.recording;

import com.batch.android.s.b;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.a;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0006HÆ\u0003J'\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0014\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0015\u001a\u00020\u0006HÖ\u0081\u0004J\n\u0010\u0016\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0017"}, d2 = {"Lcom/sightcall/universal/agent/recording/RecordingV3Entity;", "", b.a.f24015b, "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "mode", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;I)V", "getId", "()Ljava/lang/String;", "getUrl", "getMode", "()I", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class RecordingV3Entity {
    private final String id;
    private final int mode;
    private final String url;

    public RecordingV3Entity(String str, String str2, int i2) {
        str.getClass();
        str2.getClass();
        this.id = str;
        this.url = str2;
        this.mode = i2;
    }

    public static /* synthetic */ RecordingV3Entity copy$default(RecordingV3Entity recordingV3Entity, String str, String str2, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            str = recordingV3Entity.id;
        }
        if ((i3 & 2) != 0) {
            str2 = recordingV3Entity.url;
        }
        if ((i3 & 4) != 0) {
            i2 = recordingV3Entity.mode;
        }
        return recordingV3Entity.copy(str, str2, i2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getUrl() {
        return this.url;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getMode() {
        return this.mode;
    }

    public final RecordingV3Entity copy(String id, String url, int mode) {
        id.getClass();
        url.getClass();
        return new RecordingV3Entity(id, url, mode);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RecordingV3Entity)) {
            return false;
        }
        RecordingV3Entity recordingV3Entity = (RecordingV3Entity) other;
        return Intrinsics.c(this.id, recordingV3Entity.id) && Intrinsics.c(this.url, recordingV3Entity.url) && this.mode == recordingV3Entity.mode;
    }

    public final String getId() {
        return this.id;
    }

    public final int getMode() {
        return this.mode;
    }

    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        return Integer.hashCode(this.mode) + fc.b(this.id.hashCode() * 31, 31, this.url);
    }

    public String toString() {
        return a.i(this.mode, ")", fc.s("RecordingV3Entity(id=", this.id, ", url=", this.url, ", mode="));
    }
}
