package com.vuitton.android.presentation.screen.feed.models.uimodels;

import androidx.compose.ui.graphics.Color;
import com.batch.android.s.b;
import com.vuitton.android.presentation.model.common.FeatureThemeUiModel;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;", "", "", b.a.f24015b, "Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;", "theme", "Landroidx/compose/ui/graphics/Color;", "backgroundColor", "title", "imageUrl", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;JLjava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AudioGuideBannerUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f57976a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FeatureThemeUiModel f57977b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f57978c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f57979e;

    public AudioGuideBannerUiModel(String str, FeatureThemeUiModel featureThemeUiModel, long j2, String str2, String str3, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        featureThemeUiModel.getClass();
        str2.getClass();
        str3.getClass();
        this.f57976a = str;
        this.f57977b = featureThemeUiModel;
        this.f57978c = j2;
        this.d = str2;
        this.f57979e = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AudioGuideBannerUiModel)) {
            return false;
        }
        AudioGuideBannerUiModel audioGuideBannerUiModel = (AudioGuideBannerUiModel) obj;
        return this.f57976a.equals(audioGuideBannerUiModel.f57976a) && this.f57977b == audioGuideBannerUiModel.f57977b && Color.c(this.f57978c, audioGuideBannerUiModel.f57978c) && this.d.equals(audioGuideBannerUiModel.d) && this.f57979e.equals(audioGuideBannerUiModel.f57979e);
    }

    public final int hashCode() {
        int iHashCode = (this.f57977b.hashCode() + (this.f57976a.hashCode() * 31)) * 31;
        Color.Companion companion = Color.f8866b;
        ULong.Companion companion2 = ULong.INSTANCE;
        return this.f57979e.hashCode() + fc.b(fc.a(iHashCode, 31, this.f57978c), 31, this.d);
    }

    public final String toString() {
        String strI = Color.i(this.f57978c);
        StringBuilder sb = new StringBuilder("AudioGuideBannerUiModel(id=");
        sb.append(this.f57976a);
        sb.append(", theme=");
        sb.append(this.f57977b);
        sb.append(", backgroundColor=");
        cj.C(sb, strI, ", title=", this.d, ", imageUrl=");
        return n00.r(this.f57979e, ")", sb);
    }
}
