package com.vuitton.android.presentation.common.editorial.models;

import defpackage.a;
import java.time.Instant;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel;", "", "Simple", "Event", "Live", "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Event;", "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Live;", "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Simple;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class EditorialModuleCardTypeUiModel {

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Event;", "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel;", "Ljava/time/Instant;", "deadline", "", "isOnCountdown", "<init>", "(Ljava/time/Instant;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Event extends EditorialModuleCardTypeUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Instant f50804a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f50805b;

        public Event(Instant instant, boolean z) {
            super(null);
            this.f50804a = instant;
            this.f50805b = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Event)) {
                return false;
            }
            Event event = (Event) obj;
            return Intrinsics.c(this.f50804a, event.f50804a) && this.f50805b == event.f50805b;
        }

        public final int hashCode() {
            Instant instant = this.f50804a;
            return Boolean.hashCode(this.f50805b) + ((instant == null ? 0 : instant.hashCode()) * 31);
        }

        public final String toString() {
            return "Event(deadline=" + this.f50804a + ", isOnCountdown=" + this.f50805b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Live;", "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel;", "Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;", "liveInfo", "Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;", "format", "", "isOnCountdown", "<init>", "(Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Live extends EditorialModuleCardTypeUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LiveInfoUiModel f50806a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final LiveFormatUiModel f50807b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f50808c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Live(LiveInfoUiModel liveInfoUiModel, LiveFormatUiModel liveFormatUiModel, boolean z) {
            super(null);
            liveInfoUiModel.getClass();
            liveFormatUiModel.getClass();
            this.f50806a = liveInfoUiModel;
            this.f50807b = liveFormatUiModel;
            this.f50808c = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Live)) {
                return false;
            }
            Live live = (Live) obj;
            return Intrinsics.c(this.f50806a, live.f50806a) && this.f50807b == live.f50807b && this.f50808c == live.f50808c;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f50808c) + ((this.f50807b.hashCode() + (this.f50806a.hashCode() * 31)) * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Live(liveInfo=");
            sb.append(this.f50806a);
            sb.append(", format=");
            sb.append(this.f50807b);
            sb.append(", isOnCountdown=");
            return a.p(sb, this.f50808c, ")");
        }
    }

    public EditorialModuleCardTypeUiModel(DefaultConstructorMarker defaultConstructorMarker) {
    }

    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Simple;", "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel;", "Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;", "assetLayout", "<init>", "(Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Simple extends EditorialModuleCardTypeUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final AssetLayoutUiModel f50809a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Simple(AssetLayoutUiModel assetLayoutUiModel) {
            super(null);
            assetLayoutUiModel.getClass();
            this.f50809a = assetLayoutUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Simple) && this.f50809a == ((Simple) obj).f50809a;
        }

        public final int hashCode() {
            return this.f50809a.hashCode();
        }

        public final String toString() {
            return "Simple(assetLayout=" + this.f50809a + ")";
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Simple() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public /* synthetic */ Simple(AssetLayoutUiModel assetLayoutUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? AssetLayoutUiModel.FULL_WIDTH : assetLayoutUiModel);
        }
    }
}
