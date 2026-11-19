.class public final Lcom/vuitton/android/data/datasource/di/DataSourceDiModule$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/data/datasource/di/DataSourceDiModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/data/datasource/di/DataSourceDiModule$Companion;",
        "",
        "data"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic a:Lcom/vuitton/android/data/datasource/di/DataSourceDiModule$Companion;

.field public static final b:Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vuitton/android/data/datasource/di/DataSourceDiModule$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vuitton/android/data/datasource/di/DataSourceDiModule$Companion;->a:Lcom/vuitton/android/data/datasource/di/DataSourceDiModule$Companion;

    new-instance v0, Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;

    invoke-direct {v0}, Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;-><init>()V

    sput-object v0, Lcom/vuitton/android/data/datasource/di/DataSourceDiModule$Companion;->b:Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;

    return-void
.end method
