package com.vuitton.android.presentation.screen.aicompanion.models.mapper;

import com.vuitton.android.presentation.common.editorial.mapper.EditorialModuleUiModelMapperKt;
import com.vuitton.android.presentation.screen.aicompanion.models.ChatMessageSectionUiModel;
import com.vuitton.android.presentation.screen.aicompanion.models.ChatMessageUiModel;
import com.vuitton.android.presentation.utils.DateTimeUtils;
import com.vuitton.foundation.model.domain.model.aicompanion.ChatMessage;
import com.vuitton.foundation.model.domain.model.aicompanion.ChatMessageSection;
import com.vuitton.foundation.model.domain.model.aicompanion.ChatRole;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.v40;
import java.time.format.FormatStyle;
import java.util.ArrayList;
import java.util.List;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlinx.datetime.Instant;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ChatMessageMapperKt {
    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, java.time.LocalDateTime] */
    public static final ChatMessageUiModel a(ChatMessage chatMessage, boolean z, InAppDispatch inAppDispatch) {
        ChatMessageSectionUiModel editorialSection;
        chatMessage.getClass();
        inAppDispatch.getClass();
        String str = chatMessage.f66362a;
        ChatRole chatRole = chatMessage.f66363b;
        Instant instant = chatMessage.f66364c;
        instant.getClass();
        ?? localDateTime = instant.f75239b.atZone(TimeZone.getDefault().toZoneId()).toLocalDateTime();
        localDateTime.getClass();
        String strH = DateTimeUtils.h(inAppDispatch, localDateTime, FormatStyle.MEDIUM);
        List<ChatMessageSection> list = chatMessage.d;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        for (ChatMessageSection chatMessageSection : list) {
            if (chatMessageSection instanceof ChatMessageSection.SimpleText) {
                editorialSection = new ChatMessageSectionUiModel.SimpleText(((ChatMessageSection.SimpleText) chatMessageSection).f66366a);
            } else {
                if (!(chatMessageSection instanceof ChatMessageSection.EditorialSection)) {
                    v40.g();
                    return null;
                }
                editorialSection = new ChatMessageSectionUiModel.EditorialSection(EditorialModuleUiModelMapperKt.b(((ChatMessageSection.EditorialSection) chatMessageSection).f66365a));
            }
            arrayList.add(editorialSection);
        }
        return new ChatMessageUiModel(str, chatRole, instant, arrayList, strH, z);
    }
}
