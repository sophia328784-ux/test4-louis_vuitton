.class final enum Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AMBIENT:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;

.field public static final enum DIFFUSE:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;

.field public static final enum ENVIRONMENT:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;

.field public static final enum NORMAL_MAP:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;

.field public static final enum ORM:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;

.field public static final enum SPECULAR:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;

.field public static final enum TRANS:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;

.field private static final synthetic a:[Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;

    const-string v1, "AMBIENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;->AMBIENT:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;

    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;

    const-string v2, "DIFFUSE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;->DIFFUSE:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;

    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;

    const-string v3, "SPECULAR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;->SPECULAR:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;

    new-instance v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;

    const-string v4, "NORMAL_MAP"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;->NORMAL_MAP:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;

    new-instance v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;

    const-string v5, "ENVIRONMENT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;->ENVIRONMENT:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;

    new-instance v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;

    const-string v6, "ORM"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;->ORM:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;

    new-instance v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;

    const-string v7, "TRANS"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;->TRANS:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;

    filled-new-array/range {v0 .. v6}, [Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;->a:[Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;
    .locals 1

    const-class v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;

    return-object p0
.end method

.method public static values()[Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;->a:[Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;

    return-object v0
.end method
