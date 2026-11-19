.class public final synthetic Lgw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lkotlin/jvm/functions/Function0;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Landroidx/compose/material3/SheetValue;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/SheetValue;Lkotlin/jvm/functions/Function1;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lgw0;->b:Z

    iput-object p2, p0, Lgw0;->c:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lgw0;->d:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lgw0;->e:Landroidx/compose/material3/SheetValue;

    iput-object p5, p0, Lgw0;->f:Lkotlin/jvm/functions/Function1;

    iput-boolean p6, p0, Lgw0;->g:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    sget v0, Landroidx/compose/material3/SheetDefaultsKt;->a:F

    new-instance v1, Landroidx/compose/material3/SheetState;

    iget-boolean v2, p0, Lgw0;->b:Z

    iget-object v3, p0, Lgw0;->c:Lkotlin/jvm/functions/Function0;

    iget-object v4, p0, Lgw0;->d:Lkotlin/jvm/functions/Function0;

    iget-object v5, p0, Lgw0;->e:Landroidx/compose/material3/SheetValue;

    iget-object v6, p0, Lgw0;->f:Lkotlin/jvm/functions/Function1;

    iget-boolean v7, p0, Lgw0;->g:Z

    invoke-direct/range {v1 .. v7}, Landroidx/compose/material3/SheetState;-><init>(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/SheetValue;Lkotlin/jvm/functions/Function1;Z)V

    return-object v1
.end method
