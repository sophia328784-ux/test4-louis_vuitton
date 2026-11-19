package com.sightcall.universal.media.mapper;

import com.batch.android.s.b;
import com.sightcall.universal.media.PictureGroupV3Request;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\u001a\u0016\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005¨\u0006\u0006"}, d2 = {"createPictureGroupV3Request", "Lcom/sightcall/universal/media/PictureGroupV3Request;", "metadata", "Lcom/sightcall/universal/media/Metadata;", b.a.f24018f, "", "sdk_installedRelease"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class PictureGroupeV3MapperKt {
    public static final PictureGroupV3Request createPictureGroupV3Request(com.sightcall.universal.media.Metadata metadata, int i2) {
        metadata.getClass();
        String strReference = metadata.reference();
        PictureGroupV3Request.Data.Attributes attributes = new PictureGroupV3Request.Data.Attributes((strReference == null || strReference.length() == 0) ? null : metadata.reference(), i2, null, null, null, null, null, null);
        String strCaseReportId = metadata.caseReportId();
        strCaseReportId.getClass();
        return new PictureGroupV3Request(new PictureGroupV3Request.Data(null, attributes, new PictureGroupV3Request.Data.Relationships(new PictureGroupV3Request.Data.Relationships.CaseReport(strCaseReportId), new PictureGroupV3Request.Data.Relationships.Usecase(String.valueOf(metadata.usecaseId())), null, null, null), 1, null));
    }
}
