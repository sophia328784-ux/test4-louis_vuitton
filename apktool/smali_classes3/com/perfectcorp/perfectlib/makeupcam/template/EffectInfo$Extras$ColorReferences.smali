.class public final Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$ColorReferences;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ColorReferences"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$ColorReferences$ColorReference;
    }
.end annotation


# instance fields
.field public final color_reference:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$ColorReferences$ColorReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$ColorReferences;->color_reference:Ljava/util/List;

    return-void
.end method
