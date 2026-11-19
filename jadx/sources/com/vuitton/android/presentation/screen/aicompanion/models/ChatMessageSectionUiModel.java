package com.vuitton.android.presentation.screen.aicompanion.models;

import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel;", "", "SimpleText", "EditorialSection", "Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel$EditorialSection;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel$SimpleText;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class ChatMessageSectionUiModel {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel$EditorialSection;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel;", "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;", "editorialSection", "<init>", "(Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class EditorialSection extends ChatMessageSectionUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final EditorialModuleUiModel f52901a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EditorialSection(EditorialModuleUiModel editorialModuleUiModel) {
            super(null);
            editorialModuleUiModel.getClass();
            this.f52901a = editorialModuleUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof EditorialSection) && Intrinsics.c(this.f52901a, ((EditorialSection) obj).f52901a);
        }

        public final int hashCode() {
            return this.f52901a.hashCode();
        }

        public final String toString() {
            return "EditorialSection(editorialSection=" + this.f52901a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel$SimpleText;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel;", "", "text", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SimpleText extends ChatMessageSectionUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f52902a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SimpleText(String str) {
            super(null);
            str.getClass();
            this.f52902a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SimpleText) && Intrinsics.c(this.f52902a, ((SimpleText) obj).f52902a);
        }

        public final int hashCode() {
            return this.f52902a.hashCode();
        }

        public final String toString() {
            return fc.h("SimpleText(text=", this.f52902a, ")");
        }
    }

    public ChatMessageSectionUiModel(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
