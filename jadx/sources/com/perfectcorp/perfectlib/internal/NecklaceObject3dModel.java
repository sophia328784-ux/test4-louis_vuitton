package com.perfectcorp.perfectlib.internal;

import android.graphics.Bitmap;
import com.cyberlink.clgpuimage.CLShare3DRelatedClasses;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class NecklaceObject3dModel {
    public List<CLShare3DRelatedClasses.LiveObject3DModel> necklace_models = new ArrayList();
    public Map<String, Bitmap> necklace_texture_maps = new HashMap();
    public Map<String, CLShare3DRelatedClasses.Live3DHDRTextureData> necklace_HDR_texture_map = new HashMap();
    public List<CLShare3DRelatedClasses.LiveObject3DModel> necklace_occluder = new ArrayList();
}
