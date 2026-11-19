.class public final Lcom/sightcall/universal/ar/ArIgnored;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/ar/ArIgnored$Reason;
    }
.end annotation


# static fields
.field public static final BACKGROUND:Lcom/sightcall/universal/ar/ArIgnored;

.field public static final CAMERA_OFF:Lcom/sightcall/universal/ar/ArIgnored;

.field public static final CAMERA_SOURCE:Lcom/sightcall/universal/ar/ArIgnored;

.field public static final UNKNOWN:Lcom/sightcall/universal/ar/ArIgnored;

.field public static final UNSUPPORTED:Lcom/sightcall/universal/ar/ArIgnored;


# instance fields
.field private final reason:Lcom/sightcall/universal/ar/ArIgnored$Reason;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "reason"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sightcall/universal/ar/ArIgnored;

    sget-object v1, Lcom/sightcall/universal/ar/ArIgnored$Reason;->UNKNOWN:Lcom/sightcall/universal/ar/ArIgnored$Reason;

    invoke-direct {v0, v1}, Lcom/sightcall/universal/ar/ArIgnored;-><init>(Lcom/sightcall/universal/ar/ArIgnored$Reason;)V

    sput-object v0, Lcom/sightcall/universal/ar/ArIgnored;->UNKNOWN:Lcom/sightcall/universal/ar/ArIgnored;

    new-instance v0, Lcom/sightcall/universal/ar/ArIgnored;

    sget-object v1, Lcom/sightcall/universal/ar/ArIgnored$Reason;->UNSUPPORTED:Lcom/sightcall/universal/ar/ArIgnored$Reason;

    invoke-direct {v0, v1}, Lcom/sightcall/universal/ar/ArIgnored;-><init>(Lcom/sightcall/universal/ar/ArIgnored$Reason;)V

    sput-object v0, Lcom/sightcall/universal/ar/ArIgnored;->UNSUPPORTED:Lcom/sightcall/universal/ar/ArIgnored;

    new-instance v0, Lcom/sightcall/universal/ar/ArIgnored;

    sget-object v1, Lcom/sightcall/universal/ar/ArIgnored$Reason;->CAMERA_OFF:Lcom/sightcall/universal/ar/ArIgnored$Reason;

    invoke-direct {v0, v1}, Lcom/sightcall/universal/ar/ArIgnored;-><init>(Lcom/sightcall/universal/ar/ArIgnored$Reason;)V

    sput-object v0, Lcom/sightcall/universal/ar/ArIgnored;->CAMERA_OFF:Lcom/sightcall/universal/ar/ArIgnored;

    new-instance v0, Lcom/sightcall/universal/ar/ArIgnored;

    sget-object v1, Lcom/sightcall/universal/ar/ArIgnored$Reason;->CAMERA_SOURCE:Lcom/sightcall/universal/ar/ArIgnored$Reason;

    invoke-direct {v0, v1}, Lcom/sightcall/universal/ar/ArIgnored;-><init>(Lcom/sightcall/universal/ar/ArIgnored$Reason;)V

    sput-object v0, Lcom/sightcall/universal/ar/ArIgnored;->CAMERA_SOURCE:Lcom/sightcall/universal/ar/ArIgnored;

    new-instance v0, Lcom/sightcall/universal/ar/ArIgnored;

    sget-object v1, Lcom/sightcall/universal/ar/ArIgnored$Reason;->BACKGROUND:Lcom/sightcall/universal/ar/ArIgnored$Reason;

    invoke-direct {v0, v1}, Lcom/sightcall/universal/ar/ArIgnored;-><init>(Lcom/sightcall/universal/ar/ArIgnored$Reason;)V

    sput-object v0, Lcom/sightcall/universal/ar/ArIgnored;->BACKGROUND:Lcom/sightcall/universal/ar/ArIgnored;

    return-void
.end method

.method private constructor <init>(Lcom/sightcall/universal/ar/ArIgnored$Reason;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/ar/ArIgnored;->reason:Lcom/sightcall/universal/ar/ArIgnored$Reason;

    return-void
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/sightcall/universal/ar/ArIgnored;

    invoke-static {v0, p0}, Lcom/sightcall/universal/model/Moshi;->toJson(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
