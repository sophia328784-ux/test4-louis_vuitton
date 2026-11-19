package com.vuitton.android.data.dto.immersivearticle;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.json.JsonContentPolymorphicSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSectionsDtoSerializer;", "Lkotlinx/serialization/json/JsonContentPolymorphicSerializer;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSectionsDto;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ImmersiveArticleSectionsDtoSerializer extends JsonContentPolymorphicSerializer<ImmersiveArticleSectionsDto> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ImmersiveArticleSectionsDtoSerializer f45909c = new ImmersiveArticleSectionsDtoSerializer(Reflection.f71922a.b(ImmersiveArticleSectionsDto.class));

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x005e, code lost:
    
        if (r1.equals("video-cta") == false) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x008e, code lost:
    
        if (r1.equals("deep-link-cta") == false) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0164, code lost:
    
        if (r1.equals("look-cta") == false) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x016f, code lost:
    
        return com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleVideoCtaSectionDto.INSTANCE.serializer();
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // kotlinx.serialization.json.JsonContentPolymorphicSerializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlinx.serialization.DeserializationStrategy f(kotlinx.serialization.json.JsonElement r1) {
        /*
            Method dump skipped, instruction units count: 452
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleSectionsDtoSerializer.f(kotlinx.serialization.json.JsonElement):kotlinx.serialization.DeserializationStrategy");
    }
}
