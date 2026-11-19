package com.vuitton.android.presentation.screen.catalog.models;

import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.model.common.A11ySettings;
import defpackage.fc;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BW\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\u0007\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;", "", "Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModel;", "catalog", "", "Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;", "categories", "", "isLoading", "isError", "isPlpGiftTutorialsSeen", "Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;", "contactUsUiModel", "Lcom/vuitton/android/presentation/model/common/A11ySettings;", "a11ySettings", "<init>", "(Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModel;Ljava/util/List;ZZZLcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/presentation/model/common/A11ySettings;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CatalogViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CatalogUiModel f55354a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f55355b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f55356c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f55357e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ContactUsUiModel f55358f;
    public final A11ySettings g;

    public /* synthetic */ CatalogViewState(CatalogUiModel catalogUiModel, List list, boolean z, boolean z2, boolean z3, ContactUsUiModel contactUsUiModel, A11ySettings a11ySettings, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : catalogUiModel, (i2 & 2) == 0 ? list : null, (i2 & 4) != 0 ? false : z, (i2 & 8) != 0 ? false : z2, (i2 & 16) == 0 ? z3 : false, (i2 & 32) != 0 ? new ContactUsUiModel(false, null, null, null, null, null, null, null, false, false, false, null, 4095, null) : contactUsUiModel, (i2 & 64) != 0 ? new A11ySettings(false, false, false, 7, null) : a11ySettings);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CatalogViewState)) {
            return false;
        }
        CatalogViewState catalogViewState = (CatalogViewState) obj;
        return Intrinsics.c(this.f55354a, catalogViewState.f55354a) && Intrinsics.c(this.f55355b, catalogViewState.f55355b) && this.f55356c == catalogViewState.f55356c && this.d == catalogViewState.d && this.f55357e == catalogViewState.f55357e && Intrinsics.c(this.f55358f, catalogViewState.f55358f) && Intrinsics.c(this.g, catalogViewState.g);
    }

    public final int hashCode() {
        CatalogUiModel catalogUiModel = this.f55354a;
        int iHashCode = (catalogUiModel == null ? 0 : catalogUiModel.hashCode()) * 31;
        List list = this.f55355b;
        return this.g.hashCode() + ((this.f55358f.hashCode() + o60.b(o60.b(o60.b((iHashCode + (list != null ? list.hashCode() : 0)) * 31, 31, this.f55356c), 31, this.d), 31, this.f55357e)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CatalogViewState(catalog=");
        sb.append(this.f55354a);
        sb.append(", categories=");
        sb.append(this.f55355b);
        sb.append(", isLoading=");
        fc.y(sb, this.f55356c, ", isError=", this.d, ", isPlpGiftTutorialsSeen=");
        sb.append(this.f55357e);
        sb.append(", contactUsUiModel=");
        sb.append(this.f55358f);
        sb.append(", a11ySettings=");
        sb.append(this.g);
        sb.append(")");
        return sb.toString();
    }

    public CatalogViewState(CatalogUiModel catalogUiModel, List<CategoryUiModel> list, boolean z, boolean z2, boolean z3, ContactUsUiModel contactUsUiModel, A11ySettings a11ySettings) {
        contactUsUiModel.getClass();
        a11ySettings.getClass();
        this.f55354a = catalogUiModel;
        this.f55355b = list;
        this.f55356c = z;
        this.d = z2;
        this.f55357e = z3;
        this.f55358f = contactUsUiModel;
        this.g = a11ySettings;
    }

    public CatalogViewState() {
        this(null, null, false, false, false, null, null, CertificateBody.profileType, null);
    }
}
