.class public final synthetic Landroidx/compose/material3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Ljava/lang/Long;

.field public final synthetic c:Ljava/lang/Long;

.field public final synthetic d:Lkotlin/ranges/IntRange;

.field public final synthetic e:Landroidx/compose/material3/SelectableDates;

.field public final synthetic f:Ljava/util/Locale;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Lkotlin/ranges/IntRange;Landroidx/compose/material3/SelectableDates;Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/d;->b:Ljava/lang/Long;

    iput-object p2, p0, Landroidx/compose/material3/d;->c:Ljava/lang/Long;

    iput-object p3, p0, Landroidx/compose/material3/d;->d:Lkotlin/ranges/IntRange;

    iput-object p4, p0, Landroidx/compose/material3/d;->e:Landroidx/compose/material3/SelectableDates;

    iput-object p5, p0, Landroidx/compose/material3/d;->f:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    sget v0, Landroidx/compose/material3/DatePickerKt;->a:F

    new-instance v1, Landroidx/compose/material3/DatePickerStateImpl;

    const/4 v8, 0x0

    iget-object v2, p0, Landroidx/compose/material3/d;->b:Ljava/lang/Long;

    iget-object v3, p0, Landroidx/compose/material3/d;->c:Ljava/lang/Long;

    iget-object v4, p0, Landroidx/compose/material3/d;->d:Lkotlin/ranges/IntRange;

    const/4 v5, 0x0

    iget-object v6, p0, Landroidx/compose/material3/d;->e:Landroidx/compose/material3/SelectableDates;

    iget-object v7, p0, Landroidx/compose/material3/d;->f:Ljava/util/Locale;

    invoke-direct/range {v1 .. v8}, Landroidx/compose/material3/DatePickerStateImpl;-><init>(Ljava/lang/Long;Ljava/lang/Long;Lkotlin/ranges/IntRange;ILandroidx/compose/material3/SelectableDates;Ljava/util/Locale;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method
