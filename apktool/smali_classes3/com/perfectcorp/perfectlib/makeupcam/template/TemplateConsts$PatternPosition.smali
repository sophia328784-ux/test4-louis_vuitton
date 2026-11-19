.class public final enum Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PatternPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONTOUR:Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;

.field public static final enum DOWN:Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;

.field public static final enum HIGHLIGHT:Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;

.field public static final enum LEFT:Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;

.field public static final enum NONE:Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;

.field public static final enum RIGHT:Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;

.field public static final enum UP:Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;

.field private static final synthetic c:[Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;->NONE:Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;

    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;

    const/4 v2, 0x1

    const-string v3, "left"

    const-string v4, "LEFT"

    invoke-direct {v1, v4, v2, v3, v2}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;->LEFT:Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;

    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;

    const/4 v3, 0x2

    const-string v4, "right"

    const-string v5, "RIGHT"

    invoke-direct {v2, v5, v3, v4, v3}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;->RIGHT:Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;

    new-instance v3, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;

    const-string v4, "UP"

    const/4 v5, 0x3

    const-string v6, "upper"

    const/4 v7, 0x4

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;->UP:Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;

    new-instance v4, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;

    const-string v5, "lower"

    const/16 v6, 0x8

    const-string v8, "DOWN"

    invoke-direct {v4, v8, v7, v5, v6}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;->DOWN:Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;

    new-instance v5, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;

    const-string v6, "highlight"

    const/16 v7, 0x10

    const-string v8, "HIGHLIGHT"

    const/4 v9, 0x5

    invoke-direct {v5, v8, v9, v6, v7}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;->HIGHLIGHT:Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;

    new-instance v6, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;

    const-string v7, "contour"

    const/16 v8, 0x20

    const-string v9, "CONTOUR"

    const/4 v10, 0x6

    invoke-direct {v6, v9, v10, v7, v8}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;->CONTOUR:Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;

    filled-new-array/range {v0 .. v6}, [Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;->c:[Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;->a:Ljava/lang/String;

    iput p4, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;->b:I

    return-void
.end method

.method public static c(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;
    .locals 5

    invoke-static {}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;->values()[Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;->a:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lct0;->c()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;
    .locals 1

    const-class v0, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;

    return-object p0
.end method

.method public static values()[Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;->c:[Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;->b:I

    return p0
.end method

.method public final b(I)Z
    .locals 0

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;->b:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
