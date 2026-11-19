.class Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/i18n/phonenumbers/internal/RegexCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LRUCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/LinkedHashMap;

.field public final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;->b:I

    new-instance v0, Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache$1;

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-static {p1, v3, v1, v2}, Lpq0;->c(IIII)I

    move-result p1

    invoke-direct {v0, p0, p1}, Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache$1;-><init>(Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;I)V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;->a:Ljava/util/LinkedHashMap;

    return-void
.end method
