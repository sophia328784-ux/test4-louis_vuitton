package com.vuitton.android.presentation.screen.catalog.thematicplp.screen;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeAnimationState;", "", "Stable", "OverlayOpen", "ToolboxRestoring", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeAnimationState$OverlayOpen;", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeAnimationState$Stable;", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeAnimationState$ToolboxRestoring;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class ThemeAnimationState {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeAnimationState$OverlayOpen;", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeAnimationState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OverlayOpen extends ThemeAnimationState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OverlayOpen f55497a = new OverlayOpen(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OverlayOpen);
        }

        public final int hashCode() {
            return -283129289;
        }

        public final String toString() {
            return "OverlayOpen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeAnimationState$Stable;", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeAnimationState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Stable extends ThemeAnimationState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Stable f55498a = new Stable(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Stable);
        }

        public final int hashCode() {
            return -1600914018;
        }

        public final String toString() {
            return "Stable";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeAnimationState$ToolboxRestoring;", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeAnimationState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToolboxRestoring extends ThemeAnimationState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToolboxRestoring f55499a = new ToolboxRestoring(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToolboxRestoring);
        }

        public final int hashCode() {
            return 168317563;
        }

        public final String toString() {
            return "ToolboxRestoring";
        }
    }

    public ThemeAnimationState(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
