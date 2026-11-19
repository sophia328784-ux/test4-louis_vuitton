package com.perfectcorp.perfectlib.makeupcam.camera;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class EarringConvexColliders {
    ArrayList<Integer> vertex_counts = new ArrayList<>();
    ArrayList<Float> vertices = new ArrayList<>();
    ArrayList<Integer> triangle_counts = new ArrayList<>();
    ArrayList<Integer> triangle_indices = new ArrayList<>();
    ArrayList<Float> ellipsoid_params = new ArrayList<>();

    public void Copy(EarringConvexColliders earringConvexColliders) {
        if (earringConvexColliders == null) {
            return;
        }
        this.vertex_counts.clear();
        for (int i2 = 0; i2 < earringConvexColliders.vertex_counts.size(); i2++) {
            this.vertex_counts.add(earringConvexColliders.vertex_counts.get(i2));
        }
        this.vertices.clear();
        for (int i3 = 0; i3 < earringConvexColliders.vertices.size(); i3++) {
            this.vertices.add(earringConvexColliders.vertices.get(i3));
        }
        this.triangle_counts.clear();
        for (int i4 = 0; i4 < earringConvexColliders.triangle_counts.size(); i4++) {
            this.triangle_counts.add(earringConvexColliders.triangle_counts.get(i4));
        }
        this.triangle_indices.clear();
        for (int i5 = 0; i5 < earringConvexColliders.triangle_indices.size(); i5++) {
            this.triangle_indices.add(earringConvexColliders.triangle_indices.get(i5));
        }
        this.ellipsoid_params.clear();
        for (int i6 = 0; i6 < earringConvexColliders.ellipsoid_params.size(); i6++) {
            this.ellipsoid_params.add(earringConvexColliders.ellipsoid_params.get(i6));
        }
    }
}
