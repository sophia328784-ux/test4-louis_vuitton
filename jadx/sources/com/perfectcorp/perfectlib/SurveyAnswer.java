package com.perfectcorp.perfectlib;

import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.gson.reflect.TypeToken;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class SurveyAnswer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImmutableList f39967a;

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.SurveyAnswer$1, reason: invalid class name */
    class AnonymousClass1 extends TypeToken<List<String>> {
    }

    public SurveyAnswer(List<String> list) {
        this.f39967a = ImmutableList.u(list);
    }
}
