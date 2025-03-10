#include "unicode.h"
#include <Windows.h>
#include <vector>


std::wstring u2w(const std::string_view& str)
{
	if (str.empty())
	{
		return L"";
	}
	int wlen = ::MultiByteToWideChar(CP_UTF8, 0, str.data(), str.size(), NULL, 0);
	if (wlen <= 0)
	{
		return L"";
	}
	std::vector<wchar_t> result(wlen);
	::MultiByteToWideChar(CP_UTF8, 0, str.data(), str.size(), result.data(), wlen);
	return std::wstring(result.data(), result.size());
}

std::string w2u(const std::wstring_view& wstr)
{
	if (wstr.empty())
	{
		return "";
	}
	int len = ::WideCharToMultiByte(CP_UTF8, 0, wstr.data(), wstr.size(), NULL, 0, 0, 0);
	if (len <= 0)
	{
		return "";
	}
	std::vector<char> result(len);
	::WideCharToMultiByte(CP_UTF8, 0, wstr.data(), wstr.size(), result.data(), len, 0, 0);
	return std::string(result.data(), result.size());
}

std::wstring a2w(const std::string_view& str)
{
	if (str.empty())
	{
		return L"";
	}
	int wlen = ::MultiByteToWideChar(CP_ACP, 0, str.data(), str.size(), NULL, 0);
	if (wlen <= 0)
	{
		return L"";
	}
	std::vector<wchar_t> result(wlen);
	::MultiByteToWideChar(CP_ACP, 0, str.data(), str.size(), result.data(), wlen);
	return std::wstring(result.data(), result.size());
}

std::string w2a(const std::wstring_view& wstr)
{
	if (wstr.empty())
	{
		return "";
	}
	int len = ::WideCharToMultiByte(CP_ACP, 0, wstr.data(), wstr.size(), NULL, 0, 0, 0);
	if (len <= 0)
	{
		return "";
	}
	std::vector<char> result(len);
	::WideCharToMultiByte(CP_ACP, 0, wstr.data(), wstr.size(), result.data(), len, 0, 0);
	return std::string(result.data(), result.size());
}

std::string a2u(const std::string_view& str)
{
	return w2u(a2w(str));
}

std::string u2a(const std::string_view& str)
{
	return w2a(u2w(str));
}
