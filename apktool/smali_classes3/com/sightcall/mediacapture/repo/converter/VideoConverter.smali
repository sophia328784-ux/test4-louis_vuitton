.class public interface abstract Lcom/sightcall/mediacapture/repo/converter/VideoConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008`\u0018\u00002\u00020\u0001J2\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u00a6@\u00a2\u0006\u0002\u0010\u000b\u00a8\u0006\u000c\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/sightcall/mediacapture/repo/converter/VideoConverter;",
        "",
        "process",
        "Lcom/sightcall/pratik/Result;",
        "Lcom/sightcall/mediacapture/repo/entities/MediaRepo;",
        "Lcom/sightcall/mediacapture/repo/MediaCaptureError;",
        "source",
        "maxSize",
        "",
        "targetString",
        "",
        "(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract process(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/mediacapture/repo/entities/MediaRepo;",
            "I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/mediacapture/repo/entities/MediaRepo;",
            "Lcom/sightcall/mediacapture/repo/MediaCaptureError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
