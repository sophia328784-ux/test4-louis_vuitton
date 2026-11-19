.class final Landroidx/compose/foundation/CombinedClickableElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/CombinedClickableNode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u007f\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\n\u0012\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e\u0012\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e\u0012\u0006\u0010\u0014\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Landroidx/compose/foundation/CombinedClickableElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/foundation/CombinedClickableNode;",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "interactionSource",
        "Landroidx/compose/foundation/IndicationNodeFactory;",
        "indicationNodeFactory",
        "",
        "useLocalIndication",
        "enabled",
        "",
        "onClickLabel",
        "Landroidx/compose/ui/semantics/Role;",
        "role",
        "Lkotlin/Function0;",
        "",
        "onClick",
        "onLongClickLabel",
        "onLongClick",
        "onDoubleClick",
        "hapticFeedbackEnabled",
        "<init>",
        "(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/IndicationNodeFactory;ZZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "foundation"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final b:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final c:Landroidx/compose/foundation/IndicationNodeFactory;

.field public final d:Z

.field public final e:Z

.field public final f:Ljava/lang/String;

.field public final g:Landroidx/compose/ui/semantics/Role;

.field public final h:Lkotlin/jvm/functions/Function0;

.field public final i:Ljava/lang/String;

.field public final j:Lkotlin/jvm/functions/Function0;

.field public final k:Lkotlin/jvm/functions/Function0;

.field public final l:Z


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/IndicationNodeFactory;ZZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/CombinedClickableElement;->b:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p2, p0, Landroidx/compose/foundation/CombinedClickableElement;->c:Landroidx/compose/foundation/IndicationNodeFactory;

    iput-boolean p3, p0, Landroidx/compose/foundation/CombinedClickableElement;->d:Z

    iput-boolean p4, p0, Landroidx/compose/foundation/CombinedClickableElement;->e:Z

    iput-object p5, p0, Landroidx/compose/foundation/CombinedClickableElement;->f:Ljava/lang/String;

    iput-object p6, p0, Landroidx/compose/foundation/CombinedClickableElement;->g:Landroidx/compose/ui/semantics/Role;

    iput-object p7, p0, Landroidx/compose/foundation/CombinedClickableElement;->h:Lkotlin/jvm/functions/Function0;

    iput-object p8, p0, Landroidx/compose/foundation/CombinedClickableElement;->i:Ljava/lang/String;

    iput-object p9, p0, Landroidx/compose/foundation/CombinedClickableElement;->j:Lkotlin/jvm/functions/Function0;

    iput-object p10, p0, Landroidx/compose/foundation/CombinedClickableElement;->k:Lkotlin/jvm/functions/Function0;

    iput-boolean p11, p0, Landroidx/compose/foundation/CombinedClickableElement;->l:Z

    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/Modifier$Node;
    .locals 13

    new-instance v0, Landroidx/compose/foundation/CombinedClickableNode;

    iget-object v11, p0, Landroidx/compose/foundation/CombinedClickableElement;->g:Landroidx/compose/ui/semantics/Role;

    const/4 v12, 0x0

    iget-object v1, p0, Landroidx/compose/foundation/CombinedClickableElement;->h:Lkotlin/jvm/functions/Function0;

    iget-object v2, p0, Landroidx/compose/foundation/CombinedClickableElement;->i:Ljava/lang/String;

    iget-object v3, p0, Landroidx/compose/foundation/CombinedClickableElement;->j:Lkotlin/jvm/functions/Function0;

    iget-object v4, p0, Landroidx/compose/foundation/CombinedClickableElement;->k:Lkotlin/jvm/functions/Function0;

    iget-boolean v5, p0, Landroidx/compose/foundation/CombinedClickableElement;->l:Z

    iget-object v6, p0, Landroidx/compose/foundation/CombinedClickableElement;->b:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v7, p0, Landroidx/compose/foundation/CombinedClickableElement;->c:Landroidx/compose/foundation/IndicationNodeFactory;

    iget-boolean v8, p0, Landroidx/compose/foundation/CombinedClickableElement;->d:Z

    iget-boolean v9, p0, Landroidx/compose/foundation/CombinedClickableElement;->e:Z

    iget-object v10, p0, Landroidx/compose/foundation/CombinedClickableElement;->f:Ljava/lang/String;

    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/CombinedClickableNode;-><init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/IndicationNodeFactory;ZZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    const-class v2, Landroidx/compose/foundation/CombinedClickableElement;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Landroidx/compose/foundation/CombinedClickableElement;

    iget-object v2, p0, Landroidx/compose/foundation/CombinedClickableElement;->b:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v3, p1, Landroidx/compose/foundation/CombinedClickableElement;->b:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Landroidx/compose/foundation/CombinedClickableElement;->c:Landroidx/compose/foundation/IndicationNodeFactory;

    iget-object v3, p1, Landroidx/compose/foundation/CombinedClickableElement;->c:Landroidx/compose/foundation/IndicationNodeFactory;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-boolean v2, p0, Landroidx/compose/foundation/CombinedClickableElement;->d:Z

    iget-boolean v3, p1, Landroidx/compose/foundation/CombinedClickableElement;->d:Z

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    iget-boolean v2, p0, Landroidx/compose/foundation/CombinedClickableElement;->e:Z

    iget-boolean v3, p1, Landroidx/compose/foundation/CombinedClickableElement;->e:Z

    if-eq v2, v3, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Landroidx/compose/foundation/CombinedClickableElement;->f:Ljava/lang/String;

    iget-object v3, p1, Landroidx/compose/foundation/CombinedClickableElement;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget-object v2, p0, Landroidx/compose/foundation/CombinedClickableElement;->g:Landroidx/compose/ui/semantics/Role;

    iget-object v3, p1, Landroidx/compose/foundation/CombinedClickableElement;->g:Landroidx/compose/ui/semantics/Role;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_8
    iget-object v2, p0, Landroidx/compose/foundation/CombinedClickableElement;->h:Lkotlin/jvm/functions/Function0;

    iget-object v3, p1, Landroidx/compose/foundation/CombinedClickableElement;->h:Lkotlin/jvm/functions/Function0;

    if-eq v2, v3, :cond_9

    return v1

    :cond_9
    iget-object v2, p0, Landroidx/compose/foundation/CombinedClickableElement;->i:Ljava/lang/String;

    iget-object v3, p1, Landroidx/compose/foundation/CombinedClickableElement;->i:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    :cond_a
    iget-object v2, p0, Landroidx/compose/foundation/CombinedClickableElement;->j:Lkotlin/jvm/functions/Function0;

    iget-object v3, p1, Landroidx/compose/foundation/CombinedClickableElement;->j:Lkotlin/jvm/functions/Function0;

    if-eq v2, v3, :cond_b

    return v1

    :cond_b
    iget-object v2, p0, Landroidx/compose/foundation/CombinedClickableElement;->k:Lkotlin/jvm/functions/Function0;

    iget-object v3, p1, Landroidx/compose/foundation/CombinedClickableElement;->k:Lkotlin/jvm/functions/Function0;

    if-eq v2, v3, :cond_c

    return v1

    :cond_c
    iget-boolean p0, p0, Landroidx/compose/foundation/CombinedClickableElement;->l:Z

    iget-boolean p1, p1, Landroidx/compose/foundation/CombinedClickableElement;->l:Z

    if-eq p0, p1, :cond_d

    return v1

    :cond_d
    return v0
.end method

.method public final g(Landroidx/compose/ui/Modifier$Node;)V
    .locals 10

    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/CombinedClickableNode;

    iget-boolean p1, p0, Landroidx/compose/foundation/CombinedClickableElement;->l:Z

    iput-boolean p1, v0, Landroidx/compose/foundation/CombinedClickableNode;->P:Z

    iget-object p1, v0, Landroidx/compose/foundation/CombinedClickableNode;->M:Ljava/lang/String;

    iget-object v1, p0, Landroidx/compose/foundation/CombinedClickableElement;->i:Ljava/lang/String;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iput-object v1, v0, Landroidx/compose/foundation/CombinedClickableNode;->M:Ljava/lang/String;

    invoke-static {v0}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->b(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    :cond_0
    iget-object p1, v0, Landroidx/compose/foundation/CombinedClickableNode;->N:Lkotlin/jvm/functions/Function0;

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez p1, :cond_1

    move p1, v8

    goto :goto_0

    :cond_1
    move p1, v9

    :goto_0
    iget-object v1, p0, Landroidx/compose/foundation/CombinedClickableElement;->j:Lkotlin/jvm/functions/Function0;

    if-nez v1, :cond_2

    move v2, v8

    goto :goto_1

    :cond_2
    move v2, v9

    :goto_1
    if-eq p1, v2, :cond_3

    invoke-virtual {v0}, Landroidx/compose/foundation/AbstractClickableNode;->l2()V

    invoke-static {v0}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->b(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    move p1, v8

    goto :goto_2

    :cond_3
    move p1, v9

    :goto_2
    iput-object v1, v0, Landroidx/compose/foundation/CombinedClickableNode;->N:Lkotlin/jvm/functions/Function0;

    iget-object v1, v0, Landroidx/compose/foundation/CombinedClickableNode;->O:Lkotlin/jvm/functions/Function0;

    if-nez v1, :cond_4

    move v1, v8

    goto :goto_3

    :cond_4
    move v1, v9

    :goto_3
    iget-object v2, p0, Landroidx/compose/foundation/CombinedClickableElement;->k:Lkotlin/jvm/functions/Function0;

    if-nez v2, :cond_5

    move v3, v8

    goto :goto_4

    :cond_5
    move v3, v9

    :goto_4
    if-eq v1, v3, :cond_6

    move p1, v8

    :cond_6
    iput-object v2, v0, Landroidx/compose/foundation/CombinedClickableNode;->O:Lkotlin/jvm/functions/Function0;

    iget-boolean v1, v0, Landroidx/compose/foundation/AbstractClickableNode;->w:Z

    iget-boolean v4, p0, Landroidx/compose/foundation/CombinedClickableElement;->e:Z

    if-eq v1, v4, :cond_7

    move p1, v8

    :cond_7
    iget-object v1, p0, Landroidx/compose/foundation/CombinedClickableElement;->b:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v2, p0, Landroidx/compose/foundation/CombinedClickableElement;->c:Landroidx/compose/foundation/IndicationNodeFactory;

    iget-boolean v3, p0, Landroidx/compose/foundation/CombinedClickableElement;->d:Z

    iget-object v5, p0, Landroidx/compose/foundation/CombinedClickableElement;->f:Ljava/lang/String;

    iget-object v6, p0, Landroidx/compose/foundation/CombinedClickableElement;->g:Landroidx/compose/ui/semantics/Role;

    iget-object v7, p0, Landroidx/compose/foundation/CombinedClickableElement;->h:Lkotlin/jvm/functions/Function0;

    invoke-virtual/range {v0 .. v7}, Landroidx/compose/foundation/AbstractClickableNode;->v2(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/IndicationNodeFactory;ZZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)V

    if-eqz p1, :cond_8

    invoke-virtual {v0, v9}, Landroidx/compose/foundation/CombinedClickableNode;->w2(Z)V

    invoke-virtual {v0, v8}, Landroidx/compose/foundation/CombinedClickableNode;->w2(Z)V

    :cond_8
    return-void
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/compose/foundation/CombinedClickableElement;->b:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-object v3, p0, Landroidx/compose/foundation/CombinedClickableElement;->c:Landroidx/compose/foundation/IndicationNodeFactory;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroidx/compose/foundation/IndicationNodeFactory;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-boolean v3, p0, Landroidx/compose/foundation/CombinedClickableElement;->d:Z

    invoke-static {v1, v2, v3}, Lo60;->b(IIZ)I

    move-result v1

    iget-boolean v3, p0, Landroidx/compose/foundation/CombinedClickableElement;->e:Z

    invoke-static {v1, v2, v3}, Lo60;->b(IIZ)I

    move-result v1

    iget-object v3, p0, Landroidx/compose/foundation/CombinedClickableElement;->f:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Landroidx/compose/foundation/CombinedClickableElement;->g:Landroidx/compose/ui/semantics/Role;

    if-eqz v3, :cond_3

    iget v3, v3, Landroidx/compose/ui/semantics/Role;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->hashCode(I)I

    move-result v3

    goto :goto_3

    :cond_3
    move v3, v0

    :goto_3
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Landroidx/compose/foundation/CombinedClickableElement;->h:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Landroidx/compose/foundation/CombinedClickableElement;->i:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v0

    :goto_4
    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Landroidx/compose/foundation/CombinedClickableElement;->j:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v0

    :goto_5
    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Landroidx/compose/foundation/CombinedClickableElement;->k:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :cond_6
    add-int/2addr v3, v0

    mul-int/2addr v3, v2

    iget-boolean p0, p0, Landroidx/compose/foundation/CombinedClickableElement;->l:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v3

    return p0
.end method
