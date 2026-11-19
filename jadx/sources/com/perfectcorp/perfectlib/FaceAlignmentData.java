package com.perfectcorp.perfectlib;

import android.graphics.PointF;
import com.cyberlink.clgpuimage.cosmetic.CLShowAlignFilter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class FaceAlignmentData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final FaceAlignmentData f39583a = new Invalid();

    public static final class Impl extends FaceAlignmentData {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final CLShowAlignFilter.ShowAlignData f39584b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ArrayList f39585c;

        public Impl(CLShowAlignFilter.ShowAlignData showAlignData, List list) {
            CLShowAlignFilter.ShowAlignData showAlignData2 = new CLShowAlignFilter.ShowAlignData();
            this.f39584b = showAlignData2;
            showAlignData2.Copy(showAlignData);
            this.f39585c = new ArrayList(list);
        }

        @Override // com.perfectcorp.perfectlib.FaceAlignmentData
        public final List getFeaturePoints() {
            return this.f39585c;
        }

        @Override // com.perfectcorp.perfectlib.FaceAlignmentData
        public final int getRotation() {
            return this.f39584b.rotation;
        }

        @Override // com.perfectcorp.perfectlib.FaceAlignmentData
        public final boolean isValid() {
            return true;
        }
    }

    public static final class Invalid extends FaceAlignmentData {
        @Override // com.perfectcorp.perfectlib.FaceAlignmentData
        public final List getFeaturePoints() {
            return Collections.EMPTY_LIST;
        }

        @Override // com.perfectcorp.perfectlib.FaceAlignmentData
        public final int getRotation() {
            return 0;
        }

        @Override // com.perfectcorp.perfectlib.FaceAlignmentData
        public final boolean isValid() {
            return false;
        }
    }

    public abstract List<PointF> getFeaturePoints();

    public abstract int getRotation();

    public abstract boolean isValid();
}
