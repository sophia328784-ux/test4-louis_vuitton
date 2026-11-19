package androidx.compose.foundation.text.contextmenu.modifier;

import androidx.collection.MutableObjectList;
import androidx.compose.foundation.text.contextmenu.builder.TextContextMenuBuilderScope;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuComponent;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuData;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSeparator;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.node.TraversableNodeKt;
import defpackage.md;
import defpackage.p11;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class TextContextMenuModifierKt {
    public static final TextContextMenuData a(DelegatableNode delegatableNode) {
        TextContextMenuBuilderScope textContextMenuBuilderScope = new TextContextMenuBuilderScope();
        final TextContextMenuModifierKt$collectTextContextMenuData$1$1 textContextMenuModifierKt$collectTextContextMenuData$1$1 = new TextContextMenuModifierKt$collectTextContextMenuData$1$1(1, textContextMenuBuilderScope, TextContextMenuBuilderScope.class, "addFilter", "addFilter$foundation(Lkotlin/jvm/functions/Function1;)V", 0);
        final p11 p11Var = new p11(textContextMenuBuilderScope, 3);
        TraversableNodeKt.c(delegatableNode, TextContextMenuDataTraverseKey.f6125a, new Function1() { // from class: androidx.compose.foundation.text.contextmenu.modifier.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) throws JSONException {
                TraversableNode traversableNode = (TraversableNode) obj;
                if (traversableNode instanceof AddTextContextMenuDataComponentsNode) {
                    p11Var.invoke(((AddTextContextMenuDataComponentsNode) traversableNode).p);
                } else {
                    if (!(traversableNode instanceof FilterTextContextMenuDataComponentsNode)) {
                        md.k("TextContextMenuDataNode.TraverseKey key must only be attached to instances of TextContextMenuDataNode.");
                        return null;
                    }
                    ((TextContextMenuModifierKt$collectTextContextMenuData$1$1) textContextMenuModifierKt$collectTextContextMenuData$1$1).invoke(((FilterTextContextMenuDataComponentsNode) traversableNode).p);
                }
                return Boolean.TRUE;
            }
        });
        MutableObjectList mutableObjectList = new MutableObjectList(0, 1, null);
        MutableObjectList mutableObjectList2 = textContextMenuBuilderScope.f6062a;
        Object[] objArr = mutableObjectList2.f3345a;
        int i2 = mutableObjectList2.f3346b;
        boolean z = true;
        TextContextMenuComponent textContextMenuComponent = null;
        for (int i3 = 0; i3 < i2; i3++) {
            TextContextMenuComponent textContextMenuComponent2 = (TextContextMenuComponent) objArr[i3];
            if (!z || textContextMenuComponent2 != TextContextMenuSeparator.f6075b) {
                TextContextMenuSeparator textContextMenuSeparator = TextContextMenuSeparator.f6075b;
                if (textContextMenuComponent2 == textContextMenuSeparator && textContextMenuComponent == textContextMenuSeparator) {
                    z = false;
                } else {
                    if (textContextMenuComponent2 != textContextMenuSeparator) {
                        MutableObjectList mutableObjectList3 = textContextMenuBuilderScope.f6063b;
                        Object[] objArr2 = mutableObjectList3.f3345a;
                        int i4 = mutableObjectList3.f3346b;
                        int i5 = 0;
                        while (true) {
                            if (i5 < i4) {
                                if (((Boolean) ((Function1) objArr2[i5]).invoke(textContextMenuComponent2)).booleanValue()) {
                                    i5++;
                                } else {
                                    z = false;
                                }
                            }
                        }
                    }
                    mutableObjectList.g(textContextMenuComponent2);
                    z = false;
                    textContextMenuComponent = textContextMenuComponent2;
                }
            }
        }
        if (((TextContextMenuComponent) (mutableObjectList.d() ? null : mutableObjectList.f3345a[mutableObjectList.f3346b - 1])) == TextContextMenuSeparator.f6075b) {
            mutableObjectList.m(mutableObjectList.f3346b - 1);
        }
        return new TextContextMenuData(mutableObjectList.j());
    }
}
