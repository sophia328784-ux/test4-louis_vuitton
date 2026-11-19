package com.vuitton.android.presentation.screen.audioguide.models;

import com.batch.android.s.b;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import defpackage.a;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001:\u0001\rB;\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u0006¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;", "", "", b.a.f24015b, "title", "label", "", "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;", "sections", "Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel$CueUiModel;", "transcript", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V", "CueUiModel", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class TrackDetailUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f53230a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f53231b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f53232c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f53233e;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel$CueUiModel;", "", "", "startMs", "endMs", "", "text", "<init>", "(JJLjava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CueUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f53234a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f53235b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f53236c;

        public CueUiModel(long j2, long j3, String str) {
            str.getClass();
            this.f53234a = j2;
            this.f53235b = j3;
            this.f53236c = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CueUiModel)) {
                return false;
            }
            CueUiModel cueUiModel = (CueUiModel) obj;
            return this.f53234a == cueUiModel.f53234a && this.f53235b == cueUiModel.f53235b && Intrinsics.c(this.f53236c, cueUiModel.f53236c);
        }

        public final int hashCode() {
            return this.f53236c.hashCode() + fc.a(Long.hashCode(this.f53234a) * 31, 31, this.f53235b);
        }

        public final String toString() {
            StringBuilder sbQ = pq0.q(this.f53234a, "CueUiModel(startMs=", ", endMs=");
            sbQ.append(this.f53235b);
            sbQ.append(", text=");
            sbQ.append(this.f53236c);
            sbQ.append(")");
            return sbQ.toString();
        }
    }

    public TrackDetailUiModel(String str, String str2, String str3, List<? extends EditorialModuleUiModel> list, List<CueUiModel> list2) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        list.getClass();
        list2.getClass();
        this.f53230a = str;
        this.f53231b = str2;
        this.f53232c = str3;
        this.d = list;
        this.f53233e = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TrackDetailUiModel)) {
            return false;
        }
        TrackDetailUiModel trackDetailUiModel = (TrackDetailUiModel) obj;
        return Intrinsics.c(this.f53230a, trackDetailUiModel.f53230a) && Intrinsics.c(this.f53231b, trackDetailUiModel.f53231b) && Intrinsics.c(this.f53232c, trackDetailUiModel.f53232c) && Intrinsics.c(this.d, trackDetailUiModel.d) && Intrinsics.c(this.f53233e, trackDetailUiModel.f53233e);
    }

    public final int hashCode() {
        return this.f53233e.hashCode() + n00.a(fc.b(fc.b(this.f53230a.hashCode() * 31, 31, this.f53231b), 31, this.f53232c), 31, this.d);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("TrackDetailUiModel(id=", this.f53230a, ", title=", this.f53231b, ", label=");
        d21.z(this.f53232c, ", sections=", ", transcript=", sbS, this.d);
        return a.o(sbS, this.f53233e, ")");
    }
}
