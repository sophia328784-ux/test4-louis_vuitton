.class public final Lcom/vuitton/android/presentation/screen/search/components/SearchNavDisplayKt$SearchNavDisplay$$inlined$entryProvider$default$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final b:Lcom/vuitton/android/presentation/screen/search/components/SearchNavDisplayKt$SearchNavDisplay$$inlined$entryProvider$default$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/search/components/SearchNavDisplayKt$SearchNavDisplay$$inlined$entryProvider$default$1;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/search/components/SearchNavDisplayKt$SearchNavDisplay$$inlined$entryProvider$default$1;-><init>()V

    sput-object v0, Lcom/vuitton/android/presentation/screen/search/components/SearchNavDisplayKt$SearchNavDisplay$$inlined$entryProvider$default$1;->b:Lcom/vuitton/android/presentation/screen/search/components/SearchNavDisplayKt$SearchNavDisplay$$inlined$entryProvider$default$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown screen "

    invoke-static {p1, v0}, Lcj;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
