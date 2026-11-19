.class public final Lcom/sightcall/universal/ar/ArPopup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/ar/ArPopup$Type;
    }
.end annotation


# static fields
.field public static final CANCEL:Lcom/sightcall/universal/ar/ArPopup;

.field public static final INSTALL:Lcom/sightcall/universal/ar/ArPopup;

.field public static final SUCCESS:Lcom/sightcall/universal/ar/ArPopup;

.field public static final UPDATE:Lcom/sightcall/universal/ar/ArPopup;


# instance fields
.field private final type:Lcom/sightcall/universal/ar/ArPopup$Type;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "type"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sightcall/universal/ar/ArPopup;

    sget-object v1, Lcom/sightcall/universal/ar/ArPopup$Type;->INSTALL:Lcom/sightcall/universal/ar/ArPopup$Type;

    invoke-direct {v0, v1}, Lcom/sightcall/universal/ar/ArPopup;-><init>(Lcom/sightcall/universal/ar/ArPopup$Type;)V

    sput-object v0, Lcom/sightcall/universal/ar/ArPopup;->INSTALL:Lcom/sightcall/universal/ar/ArPopup;

    new-instance v0, Lcom/sightcall/universal/ar/ArPopup;

    sget-object v1, Lcom/sightcall/universal/ar/ArPopup$Type;->UPDATE:Lcom/sightcall/universal/ar/ArPopup$Type;

    invoke-direct {v0, v1}, Lcom/sightcall/universal/ar/ArPopup;-><init>(Lcom/sightcall/universal/ar/ArPopup$Type;)V

    sput-object v0, Lcom/sightcall/universal/ar/ArPopup;->UPDATE:Lcom/sightcall/universal/ar/ArPopup;

    new-instance v0, Lcom/sightcall/universal/ar/ArPopup;

    sget-object v1, Lcom/sightcall/universal/ar/ArPopup$Type;->SUCCESS:Lcom/sightcall/universal/ar/ArPopup$Type;

    invoke-direct {v0, v1}, Lcom/sightcall/universal/ar/ArPopup;-><init>(Lcom/sightcall/universal/ar/ArPopup$Type;)V

    sput-object v0, Lcom/sightcall/universal/ar/ArPopup;->SUCCESS:Lcom/sightcall/universal/ar/ArPopup;

    new-instance v0, Lcom/sightcall/universal/ar/ArPopup;

    sget-object v1, Lcom/sightcall/universal/ar/ArPopup$Type;->CANCEL:Lcom/sightcall/universal/ar/ArPopup$Type;

    invoke-direct {v0, v1}, Lcom/sightcall/universal/ar/ArPopup;-><init>(Lcom/sightcall/universal/ar/ArPopup$Type;)V

    sput-object v0, Lcom/sightcall/universal/ar/ArPopup;->CANCEL:Lcom/sightcall/universal/ar/ArPopup;

    return-void
.end method

.method private constructor <init>(Lcom/sightcall/universal/ar/ArPopup$Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/ar/ArPopup;->type:Lcom/sightcall/universal/ar/ArPopup$Type;

    return-void
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/sightcall/universal/ar/ArPopup;

    invoke-static {v0, p0}, Lcom/sightcall/universal/model/Moshi;->toJson(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
