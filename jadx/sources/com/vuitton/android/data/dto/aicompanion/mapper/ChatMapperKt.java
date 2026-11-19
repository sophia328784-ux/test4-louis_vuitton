package com.vuitton.android.data.dto.aicompanion.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.aicompanion.ChatMessageDto;
import com.vuitton.android.data.dto.aicompanion.ChatMessageSectionDto;
import com.vuitton.android.data.dto.aicompanion.ChatRoleDto;
import com.vuitton.android.data.dto.aicompanion.ChatSessionDto;
import com.vuitton.android.data.dto.common.editorial.EditorialSectionDto;
import com.vuitton.android.data.dto.common.editorial.mapper.EditorialSectionMapperKt;
import com.vuitton.android.data.exception.MappingException;
import com.vuitton.foundation.model.domain.model.aicompanion.ChatMessage;
import com.vuitton.foundation.model.domain.model.aicompanion.ChatMessageSection;
import com.vuitton.foundation.model.domain.model.aicompanion.ChatRole;
import com.vuitton.foundation.model.domain.model.aicompanion.ChatSession;
import com.vuitton.foundation.model.domain.model.common.editorial.EditorialModule;
import com.vuitton.foundation.util.StringKtExtKt;
import defpackage.tr;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlinx.datetime.Instant;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ChatMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f44495a;

        static {
            int[] iArr = new int[ChatRoleDto.values().length];
            try {
                iArr[ChatRoleDto.AGENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ChatRoleDto.USER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f44495a = iArr;
        }
    }

    public static final ChatMessage a(ChatMessageDto chatMessageDto) throws MappingException {
        ChatRole chatRole;
        ChatMessageSection editorialSection;
        EditorialModule editorialModuleA;
        String str = chatMessageDto.f44479a;
        String str2 = chatMessageDto.f44481c;
        int i2 = WhenMappings.f44495a[chatMessageDto.f44480b.ordinal()];
        if (i2 == 1) {
            chatRole = ChatRole.AGENT;
        } else {
            if (i2 != 2) {
                v40.g();
                return null;
            }
            chatRole = ChatRole.USER;
        }
        Instant instantE = StringKtExtKt.e(str2);
        if (instantE == null) {
            throw new MappingException(tr.g("'dateTime' must be Iso8601: ", str2));
        }
        List<ChatMessageSectionDto> list = chatMessageDto.d;
        ArrayList arrayList = new ArrayList();
        for (ChatMessageSectionDto chatMessageSectionDto : list) {
            String str3 = chatMessageSectionDto.f44483a;
            if (str3 != null) {
                editorialSection = new ChatMessageSection.SimpleText(str3);
            } else {
                EditorialSectionDto editorialSectionDto = chatMessageSectionDto.f44484b;
                editorialSection = (editorialSectionDto == null || (editorialModuleA = EditorialSectionMapperKt.a(editorialSectionDto)) == null) ? null : new ChatMessageSection.EditorialSection(editorialModuleA);
            }
            if (editorialSection != null) {
                arrayList.add(editorialSection);
            }
        }
        return new ChatMessage(str, chatRole, instantE, arrayList);
    }

    public static final ChatSession b(ChatSessionDto chatSessionDto) {
        chatSessionDto.getClass();
        String str = chatSessionDto.f44492a;
        List list = chatSessionDto.f44493b;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(a((ChatMessageDto) it.next()));
        }
        return new ChatSession(str, arrayList);
    }
}
