package com.vuitton.android.presentation.screen.catalog.thematicplp.models;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;", "", "Full", "Reduced", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Full;", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Reduced;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class GridModes {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f55429a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Full;", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Full extends GridModes {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Full f55430b = new Full(2, null);
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Reduced;", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Reduced extends GridModes {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Reduced f55431b = new Reduced(3, null);
    }

    public GridModes(int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this.f55429a = i2;
    }
}
