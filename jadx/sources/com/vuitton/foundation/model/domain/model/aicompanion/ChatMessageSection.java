package com.vuitton.foundation.model.domain.model.aicompanion;

import com.vuitton.foundation.model.domain.model.common.editorial.EditorialModule;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessageSection;", "", "SimpleText", "EditorialSection", "Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessageSection$EditorialSection;", "Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessageSection$SimpleText;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class ChatMessageSection {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessageSection$EditorialSection;", "Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessageSection;", "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;", "editorialSection", "<init>", "(Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class EditorialSection extends ChatMessageSection {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final EditorialModule f66365a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EditorialSection(EditorialModule editorialModule) {
            super(null);
            editorialModule.getClass();
            this.f66365a = editorialModule;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof EditorialSection) && Intrinsics.c(this.f66365a, ((EditorialSection) obj).f66365a);
        }

        public final int hashCode() {
            return this.f66365a.hashCode();
        }

        public final String toString() {
            return "EditorialSection(editorialSection=" + this.f66365a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessageSection$SimpleText;", "Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessageSection;", "", "text", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SimpleText extends ChatMessageSection {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66366a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SimpleText(String str) {
            super(null);
            str.getClass();
            this.f66366a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SimpleText) && Intrinsics.c(this.f66366a, ((SimpleText) obj).f66366a);
        }

        public final int hashCode() {
            return this.f66366a.hashCode();
        }

        public final String toString() {
            return fc.h("SimpleText(text=", this.f66366a, ")");
        }
    }

    public ChatMessageSection(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
