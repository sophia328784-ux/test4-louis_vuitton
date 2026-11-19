.class public final synthetic Lxs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/material3/internal/FloatProducer;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxs;->b:Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;

    return-void
.end method


# virtual methods
.method public final invoke()F
    .locals 0

    iget-object p0, p0, Lxs;->b:Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;

    iget-object p0, p0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->l:Landroidx/compose/material3/TopAppBarScrollBehavior;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/compose/material3/TopAppBarScrollBehavior;->getState()Landroidx/compose/material3/TopAppBarState;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->b()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
