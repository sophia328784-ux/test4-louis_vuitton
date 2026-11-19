.class public final synthetic Lcom/kakao/sdk/network/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/logging/HttpLoggingInterceptor$Logger;


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    sget-object p0, Lcom/kakao/sdk/network/ApiFactory$loggingInterceptor$2;->c:Lcom/kakao/sdk/network/ApiFactory$loggingInterceptor$2;

    sget-object p0, Lcom/kakao/sdk/common/util/SdkLog;->d:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->b(Ljava/lang/Object;)V

    return-void
.end method
