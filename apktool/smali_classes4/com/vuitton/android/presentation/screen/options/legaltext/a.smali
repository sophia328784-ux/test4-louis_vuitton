.class public final synthetic Lcom/vuitton/android/presentation/screen/options/legaltext/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/legaltext/a;->b:Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object p2, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity;->p:Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity$Companion;

    and-int/lit8 p2, p1, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v0, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    and-int/2addr p1, v2

    invoke-interface {v4, p1, p2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/options/legaltext/a;->b:Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity;

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string p1, "PAGE_LEGAL_MENTION"

    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez p0, :cond_1

    if-ne p1, p2, :cond_2

    :cond_1
    new-instance v5, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity$onCreate$1$1$1$1;

    const-string v10, "finish()V"

    const/4 v11, 0x0

    const/4 v6, 0x0

    const-class v8, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity;

    const-string v9, "finish"

    invoke-direct/range {v5 .. v11}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object p1, v5

    :cond_2
    check-cast p1, Lkotlin/reflect/KFunction;

    move-object v2, p1

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p1

    if-nez p0, :cond_3

    if-ne p1, p2, :cond_4

    :cond_3
    new-instance v5, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity$onCreate$1$1$2$1;

    const-string v10, "onDeeplinkClicked(Ljava/lang/String;)V"

    const/4 v11, 0x0

    const/4 v6, 0x1

    const-class v8, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity;

    const-string v9, "onDeeplinkClicked"

    invoke-direct/range {v5 .. v11}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object p1, v5

    :cond_4
    check-cast p1, Lkotlin/reflect/KFunction;

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/options/legaltext/components/LegalTextComposableKt;->a(Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextViewModel;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_5
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
