.class public Lcom/sightcall/universal/fcm/FcmTokenUpdateEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/fcm/FcmTokenUpdateEvent;->token:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public token()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/fcm/FcmTokenUpdateEvent;->token:Ljava/lang/String;

    return-object p0
.end method
