.class public final synthetic Lmd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IIILjava/lang/Object;)V
    .locals 0

    iput p3, p0, Lmd0;->b:I

    iput-object p4, p0, Lmd0;->e:Ljava/lang/Object;

    iput p1, p0, Lmd0;->c:I

    iput p2, p0, Lmd0;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lmd0;->b:I

    iget-object v1, p0, Lmd0;->e:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    move-object v4, p1

    check-cast v4, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;

    sget-object p1, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->P:Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    const/4 p1, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v1, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->Q:Lcom/vuitton/android/presentation/chat/ChatAttachable;

    if-eqz v7, :cond_0

    iget v5, p0, Lmd0;->c:I

    iget v6, p0, Lmd0;->d:I

    invoke-virtual/range {v2 .. v7}, Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;->a(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;IILcom/vuitton/android/presentation/chat/ChatAttachable;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    const-string p0, "chatAttachable"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p0, "contactUsNavigator"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    check-cast v1, Landroidx/compose/ui/graphics/AndroidPath;

    check-cast p1, Landroidx/compose/ui/text/ParagraphInfo;

    iget-object v0, p1, Landroidx/compose/ui/text/ParagraphInfo;->a:Landroidx/compose/ui/text/Paragraph;

    iget v2, p0, Lmd0;->c:I

    invoke-virtual {p1, v2}, Landroidx/compose/ui/text/ParagraphInfo;->d(I)I

    move-result v2

    iget p0, p0, Lmd0;->d:I

    invoke-virtual {p1, p0}, Landroidx/compose/ui/text/ParagraphInfo;->d(I)I

    move-result p0

    invoke-interface {v0, v2, p0}, Landroidx/compose/ui/text/Paragraph;->m(II)Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object p0

    iget p1, p1, Landroidx/compose/ui/text/ParagraphInfo;->f:F

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v2, v0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v4, p1

    const/16 p1, 0x20

    shl-long/2addr v2, p1

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    sget-object p1, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0, v2, v3}, Landroidx/compose/ui/graphics/AndroidPath;->t(J)V

    invoke-static {v1, p0}, Landroidx/compose/ui/graphics/Path;->o(Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/graphics/Path;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
