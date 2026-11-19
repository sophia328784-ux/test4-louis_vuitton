package com.vuitton.foundation.model.domain.model.common;

import com.batch.android.s.b;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/common/Sound;", "", "", b.a.f24015b, ConfigurationName.DOWNLOAD_PLUGIN_URL, "", "duration", "<init>", "(Ljava/lang/String;Ljava/lang/String;J)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Sound {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67140a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67141b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f67142c;

    public Sound(String str, String str2, long j2) {
        str.getClass();
        str2.getClass();
        this.f67140a = str;
        this.f67141b = str2;
        this.f67142c = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Sound)) {
            return false;
        }
        Sound sound = (Sound) obj;
        return Intrinsics.c(this.f67140a, sound.f67140a) && Intrinsics.c(this.f67141b, sound.f67141b) && this.f67142c == sound.f67142c;
    }

    public final int hashCode() {
        return Long.hashCode(this.f67142c) + fc.b(this.f67140a.hashCode() * 31, 31, this.f67141b);
    }

    public final String toString() {
        return o60.j(this.f67142c, ")", fc.s("Sound(id=", this.f67140a, ", url=", this.f67141b, ", duration="));
    }
}
