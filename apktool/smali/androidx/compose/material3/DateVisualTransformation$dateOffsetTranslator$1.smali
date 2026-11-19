.class public final Landroidx/compose/material3/DateVisualTransformation$dateOffsetTranslator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/text/input/OffsetMapping;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/DateVisualTransformation;-><init>(Landroidx/compose/material3/internal/DateInputFormat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "androidx/compose/material3/DateVisualTransformation$dateOffsetTranslator$1",
        "Landroidx/compose/ui/text/input/OffsetMapping;",
        "material3"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Landroidx/compose/material3/DateVisualTransformation;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/DateVisualTransformation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/DateVisualTransformation$dateOffsetTranslator$1;->a:Landroidx/compose/material3/DateVisualTransformation;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    iget-object p0, p0, Landroidx/compose/material3/DateVisualTransformation$dateOffsetTranslator$1;->a:Landroidx/compose/material3/DateVisualTransformation;

    iget v0, p0, Landroidx/compose/material3/DateVisualTransformation;->c:I

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    return p1

    :cond_0
    iget v0, p0, Landroidx/compose/material3/DateVisualTransformation;->d:I

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_1

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_1
    iget p0, p0, Landroidx/compose/material3/DateVisualTransformation;->e:I

    add-int/lit8 v0, p0, 0x1

    if-gt p1, v0, :cond_2

    add-int/lit8 p1, p1, -0x2

    return p1

    :cond_2
    return p0
.end method

.method public final b(I)I
    .locals 1

    iget-object p0, p0, Landroidx/compose/material3/DateVisualTransformation$dateOffsetTranslator$1;->a:Landroidx/compose/material3/DateVisualTransformation;

    iget v0, p0, Landroidx/compose/material3/DateVisualTransformation;->c:I

    if-ge p1, v0, :cond_0

    return p1

    :cond_0
    iget v0, p0, Landroidx/compose/material3/DateVisualTransformation;->d:I

    if-ge p1, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    iget p0, p0, Landroidx/compose/material3/DateVisualTransformation;->e:I

    if-gt p1, p0, :cond_2

    add-int/lit8 p1, p1, 0x2

    return p1

    :cond_2
    add-int/lit8 p0, p0, 0x2

    return p0
.end method
