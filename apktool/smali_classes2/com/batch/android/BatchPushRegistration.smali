.class public Lcom/batch/android/BatchPushRegistration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/batch/android/BatchPushRegistration;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/batch/android/BatchPushRegistration;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/batch/android/BatchPushRegistration;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/batch/android/BatchPushRegistration;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getGcpProjectID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchPushRegistration;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchPushRegistration;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getSenderID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchPushRegistration;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchPushRegistration;->b:Ljava/lang/String;

    return-object p0
.end method
