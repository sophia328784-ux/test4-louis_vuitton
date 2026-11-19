package com.perfectcorp.perfectlib;

import defpackage.md;
import defpackage.tr;

/* JADX INFO: loaded from: classes3.dex */
public enum SurveyQuestionType {
    CHECK_BOX("CheckBox"),
    MULTIPLE_CHOICE("MultipleChoice");


    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f39969a;

    SurveyQuestionType(String str) {
        this.f39969a = str;
    }

    public static SurveyQuestionType a(String str) {
        for (SurveyQuestionType surveyQuestionType : values()) {
            if (surveyQuestionType.f39969a.equalsIgnoreCase(str)) {
                return surveyQuestionType;
            }
        }
        md.n(tr.g("unknown question type ", str));
        return null;
    }
}
