.class public final synthetic Lcom/appsflyer/internal/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/appsflyer/internal/AFi1gSDK$2;

.field public final synthetic c:Lcom/android/installreferrer/api/InstallReferrerClient;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/appsflyer/internal/AFi1gSDK$2;Lcom/android/installreferrer/api/InstallReferrerClient;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/internal/s;->b:Lcom/appsflyer/internal/AFi1gSDK$2;

    iput-object p2, p0, Lcom/appsflyer/internal/s;->c:Lcom/android/installreferrer/api/InstallReferrerClient;

    iput-object p3, p0, Lcom/appsflyer/internal/s;->d:Landroid/content/Context;

    iput p4, p0, Lcom/appsflyer/internal/s;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/appsflyer/internal/s;->c:Lcom/android/installreferrer/api/InstallReferrerClient;

    iget-object v1, p0, Lcom/appsflyer/internal/s;->d:Landroid/content/Context;

    iget v2, p0, Lcom/appsflyer/internal/s;->e:I

    iget-object p0, p0, Lcom/appsflyer/internal/s;->b:Lcom/appsflyer/internal/AFi1gSDK$2;

    invoke-static {p0, v0, v1, v2}, Lcom/appsflyer/internal/AFi1gSDK$2;->a(Lcom/appsflyer/internal/AFi1gSDK$2;Lcom/android/installreferrer/api/InstallReferrerClient;Landroid/content/Context;I)V

    return-void
.end method
