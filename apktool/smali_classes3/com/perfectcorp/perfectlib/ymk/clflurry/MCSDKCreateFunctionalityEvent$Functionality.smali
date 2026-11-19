.class public final enum Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Functionality"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BRACELET:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

.field public static final enum FACE_ATTRIBUTE:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

.field public static final enum JEWELRY:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

.field public static final enum MAKEUP:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

.field public static final enum NAILS:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

.field public static final enum NECKLACE:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

.field public static final enum RING:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

.field public static final enum SHADE_FINDER:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

.field public static final enum SKINCARE:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

.field public static final enum SKINCAREHD:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

.field public static final enum WATCH:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

.field private static final synthetic b:[Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

    const/4 v1, 0x0

    const-string v2, "makeup"

    const-string v3, "MAKEUP"

    invoke-direct {v0, v3, v1, v2}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;->MAKEUP:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

    new-instance v1, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

    const/4 v2, 0x1

    const-string v3, "nails"

    const-string v4, "NAILS"

    invoke-direct {v1, v4, v2, v3}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;->NAILS:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

    new-instance v2, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

    const/4 v3, 0x2

    const-string v4, "skincare"

    const-string v5, "SKINCARE"

    invoke-direct {v2, v5, v3, v4}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;->SKINCARE:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

    new-instance v3, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

    const/4 v4, 0x3

    const-string v5, "skincareHD"

    const-string v6, "SKINCAREHD"

    invoke-direct {v3, v6, v4, v5}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;->SKINCAREHD:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

    new-instance v4, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

    const/4 v5, 0x4

    const-string v6, "shade_finder"

    const-string v7, "SHADE_FINDER"

    invoke-direct {v4, v7, v5, v6}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;->SHADE_FINDER:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

    new-instance v5, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

    const/4 v6, 0x5

    const-string v7, "face_attribute"

    const-string v8, "FACE_ATTRIBUTE"

    invoke-direct {v5, v8, v6, v7}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;->FACE_ATTRIBUTE:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

    new-instance v6, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

    const/4 v7, 0x6

    const-string v8, "ring"

    const-string v9, "RING"

    invoke-direct {v6, v9, v7, v8}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;->RING:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

    new-instance v7, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

    const/4 v8, 0x7

    const-string v9, "bracelet"

    const-string v10, "BRACELET"

    invoke-direct {v7, v10, v8, v9}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;->BRACELET:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

    new-instance v8, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

    const/16 v9, 0x8

    const-string v10, "watch"

    const-string v11, "WATCH"

    invoke-direct {v8, v11, v9, v10}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;->WATCH:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

    new-instance v9, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

    const/16 v10, 0x9

    const-string v11, "jewelry"

    const-string v12, "JEWELRY"

    invoke-direct {v9, v12, v10, v11}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;->JEWELRY:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

    new-instance v10, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

    const/16 v11, 0xa

    const-string v12, "necklace"

    const-string v13, "NECKLACE"

    invoke-direct {v10, v13, v11, v12}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;->NECKLACE:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

    filled-new-array/range {v0 .. v10}, [Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;->b:[Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;
    .locals 1

    const-class v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

    return-object p0
.end method

.method public static values()[Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;->b:[Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;->a:Ljava/lang/String;

    return-object p0
.end method
