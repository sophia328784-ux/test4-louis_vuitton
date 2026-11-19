package com.vuitton.android.presentation.screen.aicompanion.components.chat;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import com.linkplay.medialib.ContentTree;
import com.vuitton.android.presentation.screen.aicompanion.models.ChatMessageSectionUiModel;
import com.vuitton.android.presentation.screen.aicompanion.models.ChatMessageUiModel;
import com.vuitton.foundation.model.domain.model.aicompanion.ChatRole;
import defpackage.km;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.datetime.Clock;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class b implements Function2 {
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Composer composer = (Composer) obj;
        int iIntValue = ((Integer) obj2).intValue();
        ComposableSingletons$AICompanionChatMessagesKt composableSingletons$AICompanionChatMessagesKt = ComposableSingletons$AICompanionChatMessagesKt.f52817a;
        if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ChatRole chatRole = ChatRole.USER;
            List listP = CollectionsKt.P(new ChatMessageUiModel("1", chatRole, Clock.System.a(), CollectionsKt.O(new ChatMessageSectionUiModel.SimpleText("Hello, how are you?")), "Aug 31, 2026, 10:30 AM", false, 32, null), new ChatMessageUiModel(ContentTree.AUDIO_ID, ChatRole.AGENT, Clock.System.a(), CollectionsKt.O(new ChatMessageSectionUiModel.SimpleText("I'm good, thank you! How can I assist you today?")), "Aug 31, 2026, 10:30 AM", false, 32, null), new ChatMessageUiModel(ContentTree.IMAGE_ID, chatRole, Clock.System.a(), CollectionsKt.O(new ChatMessageSectionUiModel.SimpleText("I'm looking for a new handbag.")), "Aug 31, 2026, 10:30 AM", false, 32, null));
            Object objX = composer.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = ComposableSingletons$AICompanionChatMessagesKt$lambda$55656223$1$1$1.f52824b;
                composer.q(objX);
            }
            Function1 function1 = (Function1) objX;
            Object objX2 = composer.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = ComposableSingletons$AICompanionChatMessagesKt$lambda$55656223$1$2$1.f52825b;
                composer.q(objX2);
            }
            Function2 function2 = (Function2) objX2;
            Object objX3 = composer.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new km(7);
                composer.q(objX3);
            }
            Function1 function3 = (Function1) objX3;
            Object objX4 = composer.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = new km(4);
                composer.q(objX4);
            }
            Function1 function4 = (Function1) objX4;
            Object objX5 = composer.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = new km(5);
                composer.q(objX5);
            }
            Function1 function5 = (Function1) objX5;
            Object objX6 = composer.x();
            if (objX6 == composer$Companion$Empty$1) {
                objX6 = new km(6);
                composer.q(objX6);
            }
            AICompanionChatMessagesKt.b(null, listP, true, function1, function2, function3, function4, function5, (Function1) objX6, composer, 115043712, 1);
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }
}
