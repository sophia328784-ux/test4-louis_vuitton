.class public final Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/core/consent/compose/ConsentViewKt;->ConsentView(Landroid/content/Context;Ljava/lang/String;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/sightcall/core/consent/ConsentViewModel;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "invoke",
        "()V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $constraintSet:Landroidx/constraintlayout/compose/ConstraintSetForInlineDsl;

.field final synthetic $remeasureRequesterState:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/constraintlayout/compose/ConstraintSetForInlineDsl;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$3;->$remeasureRequesterState:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$3;->$constraintSet:Landroidx/constraintlayout/compose/ConstraintSetForInlineDsl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0}, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$3;->invoke()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$3;->$remeasureRequesterState:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$3;->$constraintSet:Landroidx/constraintlayout/compose/ConstraintSetForInlineDsl;

    iput-boolean v2, p0, Landroidx/constraintlayout/compose/ConstraintSetForInlineDsl;->e:Z

    return-void
.end method
