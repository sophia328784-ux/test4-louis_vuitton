.class public final Landroidx/navigation/NavOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/NavOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Landroidx/navigation/NavOptions$Builder;",
        "",
        "<init>",
        "()V",
        "navigation-common_release"
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
.field public a:Z

.field public b:Z

.field public c:I

.field public d:Ljava/lang/Object;

.field public e:Z

.field public f:Z

.field public g:I

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/navigation/NavOptions$Builder;->c:I

    iput v0, p0, Landroidx/navigation/NavOptions$Builder;->g:I

    iput v0, p0, Landroidx/navigation/NavOptions$Builder;->h:I

    iput v0, p0, Landroidx/navigation/NavOptions$Builder;->i:I

    iput v0, p0, Landroidx/navigation/NavOptions$Builder;->j:I

    return-void
.end method


# virtual methods
.method public final a()Landroidx/navigation/NavOptions;
    .locals 14

    iget-object v3, p0, Landroidx/navigation/NavOptions$Builder;->d:Ljava/lang/Object;

    iget-boolean v1, p0, Landroidx/navigation/NavOptions$Builder;->a:Z

    iget-boolean v2, p0, Landroidx/navigation/NavOptions$Builder;->b:Z

    if-eqz v3, :cond_0

    new-instance v0, Landroidx/navigation/NavOptions;

    iget-boolean v4, p0, Landroidx/navigation/NavOptions$Builder;->e:Z

    iget-boolean v5, p0, Landroidx/navigation/NavOptions$Builder;->f:Z

    iget v6, p0, Landroidx/navigation/NavOptions$Builder;->g:I

    iget v7, p0, Landroidx/navigation/NavOptions$Builder;->h:I

    iget v8, p0, Landroidx/navigation/NavOptions$Builder;->i:I

    iget v9, p0, Landroidx/navigation/NavOptions$Builder;->j:I

    invoke-direct/range {v0 .. v9}, Landroidx/navigation/NavOptions;-><init>(ZZLjava/lang/Object;ZZIIII)V

    return-object v0

    :cond_0
    new-instance v4, Landroidx/navigation/NavOptions;

    iget v7, p0, Landroidx/navigation/NavOptions$Builder;->c:I

    iget-boolean v8, p0, Landroidx/navigation/NavOptions$Builder;->e:Z

    iget-boolean v9, p0, Landroidx/navigation/NavOptions$Builder;->f:Z

    iget v10, p0, Landroidx/navigation/NavOptions$Builder;->g:I

    iget v11, p0, Landroidx/navigation/NavOptions$Builder;->h:I

    iget v12, p0, Landroidx/navigation/NavOptions$Builder;->i:I

    iget v13, p0, Landroidx/navigation/NavOptions$Builder;->j:I

    move v5, v1

    move v6, v2

    invoke-direct/range {v4 .. v13}, Landroidx/navigation/NavOptions;-><init>(ZZIZZIIII)V

    return-object v4
.end method
