{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_myfirstcourse (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/holok/myfirstcourse/.stack-work/install/x86_64-osx/c13617e84409736eac16f21048ba503d09b900a0055180740ebbce194f4681d9/8.10.4/bin"
libdir     = "/Users/holok/myfirstcourse/.stack-work/install/x86_64-osx/c13617e84409736eac16f21048ba503d09b900a0055180740ebbce194f4681d9/8.10.4/lib/x86_64-osx-ghc-8.10.4/myfirstcourse-0.1.0.0-2uNynMdlvhxEierNEuA8Yb"
dynlibdir  = "/Users/holok/myfirstcourse/.stack-work/install/x86_64-osx/c13617e84409736eac16f21048ba503d09b900a0055180740ebbce194f4681d9/8.10.4/lib/x86_64-osx-ghc-8.10.4"
datadir    = "/Users/holok/myfirstcourse/.stack-work/install/x86_64-osx/c13617e84409736eac16f21048ba503d09b900a0055180740ebbce194f4681d9/8.10.4/share/x86_64-osx-ghc-8.10.4/myfirstcourse-0.1.0.0"
libexecdir = "/Users/holok/myfirstcourse/.stack-work/install/x86_64-osx/c13617e84409736eac16f21048ba503d09b900a0055180740ebbce194f4681d9/8.10.4/libexec/x86_64-osx-ghc-8.10.4/myfirstcourse-0.1.0.0"
sysconfdir = "/Users/holok/myfirstcourse/.stack-work/install/x86_64-osx/c13617e84409736eac16f21048ba503d09b900a0055180740ebbce194f4681d9/8.10.4/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "myfirstcourse_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "myfirstcourse_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "myfirstcourse_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "myfirstcourse_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "myfirstcourse_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "myfirstcourse_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
