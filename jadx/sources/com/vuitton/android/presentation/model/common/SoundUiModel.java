package com.vuitton.android.presentation.model.common;

import com.batch.android.s.b;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.cj;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/model/common/SoundUiModel;", "", "", b.a.f24015b, ConfigurationName.DOWNLOAD_PLUGIN_URL, "", "duration", "durationFormatted", "<init>", "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SoundUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f51795a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f51796b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f51797c;
    public final String d;

    public SoundUiModel(String str, String str2, long j2, String str3) {
        cj.z(str, str2, str3);
        this.f51795a = str;
        this.f51796b = str2;
        this.f51797c = j2;
        this.d = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SoundUiModel)) {
            return false;
        }
        SoundUiModel soundUiModel = (SoundUiModel) obj;
        return Intrinsics.c(this.f51795a, soundUiModel.f51795a) && Intrinsics.c(this.f51796b, soundUiModel.f51796b) && this.f51797c == soundUiModel.f51797c && Intrinsics.c(this.d, soundUiModel.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + fc.a(fc.b(this.f51795a.hashCode() * 31, 31, this.f51796b), 31, this.f51797c);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("SoundUiModel(id=", this.f51795a, ", url=", this.f51796b, ", duration=");
        sbS.append(this.f51797c);
        sbS.append(", durationFormatted=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }
}
