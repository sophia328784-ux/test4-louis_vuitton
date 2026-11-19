package com.perfectcorp.perfectlib.makeupcam.camera;

import android.graphics.PointF;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLive3DEyebrowFilter;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLive3DEyebrowWarpFilter;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLive3DFilter;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveBlush3DFilter;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveBlushFilter;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveBronzerFilter;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveConcealerFilter;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveCubeEyewearFilter;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveEyeContactFilter;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveEyeFilter;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveFaceArtFilter;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveFaceContourFilter;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveFaceDistortionFilter;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveFaceReshapeFilter;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveFilter;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveFoundationFilter;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveHairDyeFilter;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveLipStickFilter;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveLiplinerFilter;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveSmoothFilter$LiveSmoothMetadata;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveTeethWhitenFilter;
import com.cyberlink.clgpuimage.cosmetic.CLShowAlignFilter;
import com.cyberlink.clgpuimage.cosmetic.CLStickerLiveFilter;
import com.cyberlink.clgpuimage.cosmetic.GPUImageBackgroundFilter;
import com.perfectcorp.perfectlib.core.BaseVenus;
import com.perfectcorp.perfectlib.jniproxy.UIMakeupJNI;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BaseVenus f40905a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CLMakeupLiveFilter f40906b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GPUImageBackgroundFilter f40907c;
    public final CLMakeupLiveEyeFilter.LiveEyeMakeupMetadata[][] g;
    public final boolean[] d = new boolean[3];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean[] f40908e = new boolean[3];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CLMakeupLiveEyeContactFilter.LiveEyeContactMetadata[] f40909f = new CLMakeupLiveEyeContactFilter.LiveEyeContactMetadata[3];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CLMakeupLiveLipStickFilter.LipstickData[] f40910h = new CLMakeupLiveLipStickFilter.LipstickData[3];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CLMakeupLiveLiplinerFilter.LiplinerData[] f40911i = new CLMakeupLiveLiplinerFilter.LiplinerData[3];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final CLMakeupLiveTeethWhitenFilter.TeethWhitenMetaData[] f40912j = new CLMakeupLiveTeethWhitenFilter.TeethWhitenMetaData[3];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final CLMakeupLiveBlushFilter.LiveBlushMakeupdata[] f40913k = new CLMakeupLiveBlushFilter.LiveBlushMakeupdata[3];
    public final CLMakeupLiveBlush3DFilter.LiveBlush3DMetadata[] l = new CLMakeupLiveBlush3DFilter.LiveBlush3DMetadata[3];
    public final CLMakeupLiveSmoothFilter$LiveSmoothMetadata[] m = new CLMakeupLiveSmoothFilter$LiveSmoothMetadata[3];
    public final CLMakeupLiveFilter.LiveFrameInformation[] n = new CLMakeupLiveFilter.LiveFrameInformation[3];
    public final CLMakeupLiveConcealerFilter.LiveConcealerMetadata[] o = new CLMakeupLiveConcealerFilter.LiveConcealerMetadata[3];
    public final CLMakeupLiveFoundationFilter.LiveFoundationData[] p = new CLMakeupLiveFoundationFilter.LiveFoundationData[3];
    public final CLMakeupLiveFoundationFilter.LiveFoundationMeshData[] q = new CLMakeupLiveFoundationFilter.LiveFoundationMeshData[3];
    public final CLMakeupLiveFaceReshapeFilter.LiveFaceReshapeMetadata[] r = new CLMakeupLiveFaceReshapeFilter.LiveFaceReshapeMetadata[3];
    public final CLMakeupLiveFaceDistortionFilter.LiveFaceDistortionMetadata[] s = new CLMakeupLiveFaceDistortionFilter.LiveFaceDistortionMetadata[3];
    public final CLMakeupLive3DFilter.LiveObject3DMetadata[] t = new CLMakeupLive3DFilter.LiveObject3DMetadata[3];
    public final CLMakeupLive3DFilter.LiveEarringMetadata[] u = new CLMakeupLive3DFilter.LiveEarringMetadata[3];
    public final CLMakeupLiveFaceArtFilter.LiveFaceArtMetadata[] v = new CLMakeupLiveFaceArtFilter.LiveFaceArtMetadata[3];
    public final CLMakeupLiveFilter.LiveDynamicRangeMetadata[] w = new CLMakeupLiveFilter.LiveDynamicRangeMetadata[3];
    public final CLStickerLiveFilter.StickerData[] x = new CLStickerLiveFilter.StickerData[3];
    public final CLMakeupLiveHairDyeFilter.HairDyeData[] y = new CLMakeupLiveHairDyeFilter.HairDyeData[3];
    public final CLMakeupLive3DEyebrowFilter.LiveEyebrow3DMetadata[] z = new CLMakeupLive3DEyebrowFilter.LiveEyebrow3DMetadata[3];
    public final CLMakeupLive3DEyebrowWarpFilter.LiveEyebrowWarp3DMetadata[] A = new CLMakeupLive3DEyebrowWarpFilter.LiveEyebrowWarp3DMetadata[3];
    public final CLMakeupLiveFaceContourFilter.LiveFaceContourMetadata[] B = new CLMakeupLiveFaceContourFilter.LiveFaceContourMetadata[3];
    public final CLMakeupLiveBronzerFilter.LiveBronzerMetadata[] C = new CLMakeupLiveBronzerFilter.LiveBronzerMetadata[3];
    public final CLMakeupLiveCubeEyewearFilter.LiveCubeEyewearMetaData[] D = new CLMakeupLiveCubeEyewearFilter.LiveCubeEyewearMetaData[3];
    public final CLMakeupLiveEyeFilter.LiveEye3DMetadata[] E = new CLMakeupLiveEyeFilter.LiveEye3DMetadata[3];
    public final CLMakeupLiveFilter.LiveFaceRegionOccludeMetadata[] F = new CLMakeupLiveFilter.LiveFaceRegionOccludeMetadata[3];
    public final CLShowAlignFilter.ShowAlignData[] G = new CLShowAlignFilter.ShowAlignData[3];
    public final List[] H = new List[3];
    public final List[] I = new List[3];
    public final GPUImageBackgroundFilter.BackgroundData J = new GPUImageBackgroundFilter.BackgroundData();

    public l(BaseVenus baseVenus, CLMakeupLiveFilter cLMakeupLiveFilter, GPUImageBackgroundFilter gPUImageBackgroundFilter) {
        this.f40905a = baseVenus;
        this.f40906b = cLMakeupLiveFilter;
        this.f40907c = gPUImageBackgroundFilter;
        CLMakeupLiveEyeFilter.LiveEyeMakeupMetadata[][] liveEyeMakeupMetadataArr = new CLMakeupLiveEyeFilter.LiveEyeMakeupMetadata[3][];
        this.g = liveEyeMakeupMetadataArr;
        for (int i2 = 0; i2 < 3; i2++) {
            this.f40909f[i2] = new CLMakeupLiveEyeContactFilter.LiveEyeContactMetadata();
            CLMakeupLiveEyeFilter.LiveEyeMakeupMetadata[] liveEyeMakeupMetadataArr2 = new CLMakeupLiveEyeFilter.LiveEyeMakeupMetadata[2];
            liveEyeMakeupMetadataArr[i2] = liveEyeMakeupMetadataArr2;
            liveEyeMakeupMetadataArr2[0] = new CLMakeupLiveEyeFilter.LiveEyeMakeupMetadata();
            liveEyeMakeupMetadataArr[i2][1] = new CLMakeupLiveEyeFilter.LiveEyeMakeupMetadata();
            this.f40910h[i2] = new CLMakeupLiveLipStickFilter.LipstickData();
            this.f40911i[i2] = new CLMakeupLiveLiplinerFilter.LiplinerData();
            this.f40912j[i2] = new CLMakeupLiveTeethWhitenFilter.TeethWhitenMetaData();
            this.f40913k[i2] = new CLMakeupLiveBlushFilter.LiveBlushMakeupdata();
            this.l[i2] = new CLMakeupLiveBlush3DFilter.LiveBlush3DMetadata();
            this.m[i2] = new CLMakeupLiveSmoothFilter$LiveSmoothMetadata();
            this.n[i2] = new CLMakeupLiveFilter.LiveFrameInformation();
            this.o[i2] = new CLMakeupLiveConcealerFilter.LiveConcealerMetadata();
            this.p[i2] = new CLMakeupLiveFoundationFilter.LiveFoundationData();
            this.q[i2] = new CLMakeupLiveFoundationFilter.LiveFoundationMeshData();
            this.t[i2] = new CLMakeupLive3DFilter.LiveObject3DMetadata();
            this.u[i2] = new CLMakeupLive3DFilter.LiveEarringMetadata();
            this.v[i2] = new CLMakeupLiveFaceArtFilter.LiveFaceArtMetadata();
            this.r[i2] = new CLMakeupLiveFaceReshapeFilter.LiveFaceReshapeMetadata();
            this.s[i2] = new CLMakeupLiveFaceDistortionFilter.LiveFaceDistortionMetadata();
            this.w[i2] = new CLMakeupLiveFilter.LiveDynamicRangeMetadata();
            this.x[i2] = new CLStickerLiveFilter.StickerData();
            this.y[i2] = new CLMakeupLiveHairDyeFilter.HairDyeData();
            this.z[i2] = new CLMakeupLive3DEyebrowFilter.LiveEyebrow3DMetadata();
            this.A[i2] = new CLMakeupLive3DEyebrowWarpFilter.LiveEyebrowWarp3DMetadata();
            this.B[i2] = new CLMakeupLiveFaceContourFilter.LiveFaceContourMetadata();
            this.C[i2] = new CLMakeupLiveBronzerFilter.LiveBronzerMetadata();
            this.D[i2] = new CLMakeupLiveCubeEyewearFilter.LiveCubeEyewearMetaData();
            this.E[i2] = new CLMakeupLiveEyeFilter.LiveEye3DMetadata();
            this.F[i2] = new CLMakeupLiveFilter.LiveFaceRegionOccludeMetadata();
            this.G[i2] = new CLShowAlignFilter.ShowAlignData();
            this.H[i2] = new ArrayList();
            this.I[i2] = new ArrayList();
        }
    }

    public final void a(boolean[] zArr, boolean[] zArr2) {
        CLMakeupLiveHairDyeFilter.HairDyeData[] hairDyeDataArr = this.y;
        CLMakeupLiveFilter cLMakeupLiveFilter = this.f40906b;
        if (cLMakeupLiveFilter != null) {
            cLMakeupLiveFilter.c0(this.f40909f, this.g, this.f40910h, this.f40911i, this.f40912j, this.f40913k, this.l, this.m, this.n, this.o, this.p, this.q, this.r, this.s, this.t, this.u, this.v, this.w, this.x, hairDyeDataArr, this.z, this.A, this.B, this.C, this.D, this.E, this.F, zArr, zArr2);
        }
        GPUImageBackgroundFilter gPUImageBackgroundFilter = this.f40907c;
        if (gPUImageBackgroundFilter != null) {
            gPUImageBackgroundFilter.l(this.J, hairDyeDataArr[0]);
        }
    }

    public final boolean b(int i2, int i3) {
        float f2;
        float f3;
        boolean[] zArr = this.f40908e;
        BaseVenus baseVenus = this.f40905a;
        long j2 = baseVenus.f40398a;
        CLMakeupLiveEyeContactFilter.LiveEyeContactMetadata[] liveEyeContactMetadataArr = this.f40909f;
        CLMakeupLiveEyeFilter.LiveEyeMakeupMetadata[][] liveEyeMakeupMetadataArr = this.g;
        CLMakeupLiveLipStickFilter.LipstickData[] lipstickDataArr = this.f40910h;
        CLMakeupLiveLiplinerFilter.LiplinerData[] liplinerDataArr = this.f40911i;
        CLMakeupLiveTeethWhitenFilter.TeethWhitenMetaData[] teethWhitenMetaDataArr = this.f40912j;
        CLMakeupLiveBlushFilter.LiveBlushMakeupdata[] liveBlushMakeupdataArr = this.f40913k;
        CLMakeupLiveBlush3DFilter.LiveBlush3DMetadata[] liveBlush3DMetadataArr = this.l;
        CLMakeupLiveSmoothFilter$LiveSmoothMetadata[] cLMakeupLiveSmoothFilter$LiveSmoothMetadataArr = this.m;
        CLMakeupLiveFilter.LiveFrameInformation[] liveFrameInformationArr = this.n;
        boolean zCUIMakeupLive_GetMakeupMetadata = UIMakeupJNI.CUIMakeupLive_GetMakeupMetadata(j2, baseVenus, liveEyeContactMetadataArr, liveEyeMakeupMetadataArr, lipstickDataArr, liplinerDataArr, teethWhitenMetaDataArr, liveBlushMakeupdataArr, liveBlush3DMetadataArr, cLMakeupLiveSmoothFilter$LiveSmoothMetadataArr, liveFrameInformationArr, this.o, this.p, this.q, this.r, this.s, this.t, this.u, this.v, this.w, this.x, this.y, this.z, this.A, this.B, this.C, this.D, this.E, this.F, this.d, zArr) & UIMakeupJNI.CUIMakeupLive_GetBackgroundMetadata(baseVenus.f40398a, baseVenus, this.J) & UIMakeupJNI.CUIMakeupLive_GetFaceData(baseVenus.f40398a, baseVenus, this.I);
        long j3 = baseVenus.f40398a;
        List[] listArr = this.H;
        boolean zCUIMakeupLive_GetFaceData = zCUIMakeupLive_GetMakeupMetadata & UIMakeupJNI.CUIMakeupLive_GetFaceData(j3, baseVenus, listArr);
        for (int i4 = 0; i4 < 3; i4++) {
            CLShowAlignFilter.ShowAlignData showAlignData = this.G[i4];
            CLMakeupLiveFilter.LiveFrameInformation liveFrameInformation = liveFrameInformationArr[i4];
            int i5 = liveFrameInformation.rotation;
            showAlignData.rotation = i5;
            showAlignData.m_face_align_data = liveFrameInformation.feature_points;
            showAlignData.m_is_data_valid = zCUIMakeupLive_GetFaceData;
            List<PointF> list = listArr[i4];
            if (i5 == 90 || i5 == 270) {
                f2 = i3;
                f3 = i2;
            } else {
                f2 = i2;
                f3 = i3;
            }
            for (PointF pointF : list) {
                pointF.x *= f2;
                pointF.y *= f3;
            }
        }
        return zCUIMakeupLive_GetFaceData;
    }
}
