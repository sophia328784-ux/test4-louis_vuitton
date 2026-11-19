package com.vuitton.android.presentation.screen.portal.models;

import com.batch.android.s.b;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import defpackage.fc;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001:\u0001\u000eBC\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel;", "", "", ConfigurationName.KEY, "surtitle", "title", "Lcom/vuitton/android/presentation/model/common/AssetUiModel;", "asset", "", "Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel$SlideUiModel;", "slides", "soundUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Ljava/util/List;Ljava/lang/String;)V", "SlideUiModel", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PortalUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f63324a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f63325b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f63326c;
    public final AssetUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f63327e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f63328f;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel$SlideUiModel;", "", "", b.a.f24015b, "Lcom/vuitton/android/presentation/screen/portal/models/PortalSlideTypeUiModel;", "type", "Lcom/vuitton/android/presentation/screen/portal/models/PortalDataUiModel;", DbParams.KEY_DATA, "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/portal/models/PortalSlideTypeUiModel;Lcom/vuitton/android/presentation/screen/portal/models/PortalDataUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SlideUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f63329a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final PortalSlideTypeUiModel f63330b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final PortalDataUiModel f63331c;

        public SlideUiModel(String str, PortalSlideTypeUiModel portalSlideTypeUiModel, PortalDataUiModel portalDataUiModel) {
            str.getClass();
            portalSlideTypeUiModel.getClass();
            portalDataUiModel.getClass();
            this.f63329a = str;
            this.f63330b = portalSlideTypeUiModel;
            this.f63331c = portalDataUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SlideUiModel)) {
                return false;
            }
            SlideUiModel slideUiModel = (SlideUiModel) obj;
            return Intrinsics.c(this.f63329a, slideUiModel.f63329a) && this.f63330b == slideUiModel.f63330b && Intrinsics.c(this.f63331c, slideUiModel.f63331c);
        }

        public final int hashCode() {
            return this.f63331c.hashCode() + ((this.f63330b.hashCode() + (this.f63329a.hashCode() * 31)) * 31);
        }

        public final String toString() {
            return "SlideUiModel(id=" + this.f63329a + ", type=" + this.f63330b + ", data=" + this.f63331c + ")";
        }
    }

    public PortalUiModel(String str, String str2, String str3, AssetUiModel assetUiModel, List<SlideUiModel> list, String str4) {
        str.getClass();
        assetUiModel.getClass();
        list.getClass();
        this.f63324a = str;
        this.f63325b = str2;
        this.f63326c = str3;
        this.d = assetUiModel;
        this.f63327e = list;
        this.f63328f = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PortalUiModel)) {
            return false;
        }
        PortalUiModel portalUiModel = (PortalUiModel) obj;
        return Intrinsics.c(this.f63324a, portalUiModel.f63324a) && Intrinsics.c(this.f63325b, portalUiModel.f63325b) && Intrinsics.c(this.f63326c, portalUiModel.f63326c) && Intrinsics.c(this.d, portalUiModel.d) && Intrinsics.c(this.f63327e, portalUiModel.f63327e) && Intrinsics.c(this.f63328f, portalUiModel.f63328f);
    }

    public final int hashCode() {
        int iHashCode = this.f63324a.hashCode() * 31;
        String str = this.f63325b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f63326c;
        int iA = n00.a((this.d.hashCode() + ((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31)) * 31, 31, this.f63327e);
        String str3 = this.f63328f;
        return iA + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("PortalUiModel(key=", this.f63324a, ", surtitle=", this.f63325b, ", title=");
        sbS.append(this.f63326c);
        sbS.append(", asset=");
        sbS.append(this.d);
        sbS.append(", slides=");
        sbS.append(this.f63327e);
        sbS.append(", soundUrl=");
        sbS.append(this.f63328f);
        sbS.append(")");
        return sbS.toString();
    }
}
