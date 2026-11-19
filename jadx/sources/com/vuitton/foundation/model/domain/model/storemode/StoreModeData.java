package com.vuitton.foundation.model.domain.model.storemode;

import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0001\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeData;", "", "StoreModeSimple", "Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeData$StoreModeSimple;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class StoreModeData {

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeData$StoreModeSimple;", "Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeData;", "", "title", "description", "Lcom/vuitton/foundation/model/domain/model/common/AssetImage;", "image", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "link", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class StoreModeSimple extends StoreModeData {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f68258a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f68259b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AssetImage f68260c;
        public final ContributionLink d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public StoreModeSimple(String str, String str2, AssetImage assetImage, ContributionLink contributionLink) {
            super(null);
            str.getClass();
            str2.getClass();
            assetImage.getClass();
            contributionLink.getClass();
            this.f68258a = str;
            this.f68259b = str2;
            this.f68260c = assetImage;
            this.d = contributionLink;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof StoreModeSimple)) {
                return false;
            }
            StoreModeSimple storeModeSimple = (StoreModeSimple) obj;
            return Intrinsics.c(this.f68258a, storeModeSimple.f68258a) && Intrinsics.c(this.f68259b, storeModeSimple.f68259b) && Intrinsics.c(this.f68260c, storeModeSimple.f68260c) && Intrinsics.c(this.d, storeModeSimple.d);
        }

        public final int hashCode() {
            return this.d.hashCode() + ((this.f68260c.hashCode() + fc.b(this.f68258a.hashCode() * 31, 31, this.f68259b)) * 31);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("StoreModeSimple(title=", this.f68258a, ", description=", this.f68259b, ", image=");
            sbS.append(this.f68260c);
            sbS.append(", link=");
            sbS.append(this.d);
            sbS.append(")");
            return sbS.toString();
        }
    }

    public StoreModeData(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
